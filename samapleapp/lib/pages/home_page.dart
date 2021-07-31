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
   print(catlogJson);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(50, (index) => CatlogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context,index)
          {
            return ItemWidget(item: dummyList[index],);
          },),
      ),
    drawer: MyDrawer(),
    );

  }
}