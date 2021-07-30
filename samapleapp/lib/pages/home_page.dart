import 'package:flutter/material.dart';
import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/widgets/drawer.dart';
import 'package:samapleapp/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

final int day=30;
final String name="Rahul";
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