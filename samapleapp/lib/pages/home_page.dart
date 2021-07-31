import 'dart:convert';

import "package:velocity_x/velocity_x.dart";
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/widgets/drawer.dart';
import 'package:samapleapp/widgets/item_widget.dart';
import 'package:samapleapp/widgets/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final int day=30;

final String name="Rahul";
@override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async
  {
    
   var catlogJson=await rootBundle.loadString("assets/files/catlog.json");
   var decodData=jsonDecode(catlogJson);
   var productData=decodData["products"];
   CatlogModel.items=List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
   setState(() {
     
   });
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList=List.generate(50, (index) => CatlogModel.items[0]);
    return Scaffold(
      backgroundColor: MyThemes.creamColor,
      body:SafeArea(
        child: Container(
          padding: Vx.m32,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ CatlogHeader() ,
           ( CatalogList().expand()
            )
          
            
          
            ],
            )
        ),
      ),);



    
}

}

class CatlogHeader extends StatelessWidget {
  const CatlogHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Catlog App".text.xl5.bold.color(MyThemes.darkBluishColor).make(),
              "Trending Products".text.xl2.make()
      
            ],
          );
  }
}

class CatalogList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatlogModel.items.length,
  
    itemBuilder: (context,index)
    {
      final catalog=CatlogModel.items[index];
      return CatalogItem(catalog:catalog);
    },);
  }
}

class CatalogItem extends StatelessWidget {

final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(children: [CatalogImage(image: catalog.image,),
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

class CatalogImage extends StatelessWidget {

 final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.rounded.p8.color(MyThemes.creamColor).make().p16().w40(context);
  }
}
// ListView.builder(
//           itemCount: CatlogModel.items.length,
//           itemBuilder: (context,index)
//           {
//             return ItemWidget(item: CatlogModel.items[index],);
//           },)

