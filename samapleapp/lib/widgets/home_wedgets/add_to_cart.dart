import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapleapp/models/cart.dart';
import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catlog_image.dart';
class AddToCart extends StatefulWidget {
  const AddToCart({  Key? key,  required this.catalog,}) : super(key: key);

  final Item catalog;

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
        final _cart =CartModel();


  @override
  Widget build(BuildContext context) {
       bool isInCart=_cart.items.contains(widget.catalog) ??false;

    return ElevatedButton(onPressed:() 
    {
      if(!isInCart)
      {
              isInCart=isInCart.toggle();
      setState(() { });
       final _catlog=CatlogModel();
       _cart.catalog=_catlog;
      _cart.add(widget.catalog);
      }
      
    },
    //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailsPage(catalog: widget.catalog)));
     child:isInCart? Icon(Icons.done): Icon(CupertinoIcons.cart_badge_plus),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
    shape: MaterialStateProperty.all(StadiumBorder())),
    
    
    );
  }
}