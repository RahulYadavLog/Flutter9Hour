
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'add_to_cart.dart';
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

class CatalogItem extends StatefulWidget {

final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  _CatalogItemState createState() => _CatalogItemState();
}

class _CatalogItemState extends State<CatalogItem> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(children: [Hero(tag: Key(widget.catalog.id.toString()),child: CatalogImage(image: widget.catalog.image,)),
      Expanded(child:Column(
       crossAxisAlignment:CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.catalog.name.text.lg.color(context.accentColor).bold.make(),
          widget.catalog.desc.text.make(),
          10.heightBox,
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${widget.catalog.price}".text.bold.xl.make(),
              AddToCart(catalog: widget.catalog)
            ],
          ).pOnly(right: 8.0)
        ],
      ))],)
    ).color(context.cardColor).rounded.square(150).make().py16();
    
  }
}
