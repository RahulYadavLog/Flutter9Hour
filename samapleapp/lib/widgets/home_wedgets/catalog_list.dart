
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';
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
          catalog.name.text.lg.color(MyThemes.darkBluishColor).bold.make(),
          catalog.desc.text.make(),
          10.heightBox,
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl.make(),
              ElevatedButton(onPressed:() {}, child: "Buy".text.make(),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyThemes.darkBluishColor),
              shape: MaterialStateProperty.all(StadiumBorder())),
              
              )
            ],
          ).pOnly(right: 8.0)
        ],
      ))],)
    ).white.rounded.square(150).make().py16();
    
  }
}