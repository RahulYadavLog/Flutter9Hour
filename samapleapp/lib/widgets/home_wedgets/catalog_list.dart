
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapleapp/models/cart.dart';
import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catlog_image.dart';
class CatalogList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatlogModel.items.length,
  
    itemBuilder: (context,index)
    {
      final catalog=CatlogModel.items[index];
      return InkWell(
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailsPage(catalog: catalog))),
        child: CatalogItem(catalog:catalog));
    },);
  }
}

class CatalogItem extends StatelessWidget {

final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(children: [Hero(tag: Key(catalog.id.toString()),child: CatalogImage(image: catalog.image,)),
      Expanded(child:Column(
       crossAxisAlignment:CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          catalog.name.text.lg.color(context.accentColor).bold.make(),
          catalog.desc.text.make(),
          10.heightBox,
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl.make(),
              _AddToCart(catalog: catalog)
            ],
          ).pOnly(right: 8.0)
        ],
      ))],)
    ).color(context.cardColor).rounded.square(150).make().py16();
    
  }
}

class _AddToCart extends StatefulWidget {
  const _AddToCart({  Key? key,  required this.catalog,}) : super(key: key);

  final Item catalog;

  @override
  __AddToCartState createState() => __AddToCartState();
}

class __AddToCartState extends State<_AddToCart> {
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