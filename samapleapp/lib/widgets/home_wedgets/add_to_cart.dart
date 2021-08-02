
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapleapp/models/cart.dart';
import 'package:samapleapp/models/catlog.dart';
import 'package:velocity_x/velocity_x.dart';
class AddToCart extends StatefulWidget {
  const AddToCart({  Key? key,  required this.catalog,}) : super(key: key);

  final Item catalog;

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
   bool isAdded=false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:() 
    {
      isAdded=isAdded.toggle();
      setState(() { });
      // final _catlog=CatlogModel();
      final _cart =CartModel();
      _cart.add(widget.catalog);
      
    },
    //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailsPage(catalog: widget.catalog)));
     child:isAdded? Icon(Icons.done): "Add to cart".text.make(),
    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
    shape: MaterialStateProperty.all(StadiumBorder())),
    
    
    );
  }
}