import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/widgets/drawer.dart';
import 'package:samapleapp/widgets/item_widget.dart';
import 'dart:convert';

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
      appBar: AppBar(
        title: Text("Catlog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:(CatlogModel.items.isEmpty)?Center (child: CircularProgressIndicator(),):
        ListView.builder(
          itemCount: CatlogModel.items.length,
          itemBuilder: (context,index)
          {
            return ItemWidget(item: CatlogModel.items[index],);
          },),
      ),
    drawer: MyDrawer(),
    );

  }
}