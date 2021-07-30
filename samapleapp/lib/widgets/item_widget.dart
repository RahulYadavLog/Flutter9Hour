import 'package:flutter/material.dart';
import 'package:samapleapp/models/catlog.dart';
class  ItemWidget extends StatelessWidget {


final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: ()
        {
          print("${item.desc} Pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price.toString()}",textScaleFactor: 1.5,style: 
        TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),),
    );

      // leading: Image.asset("assets/images/img1.png"),);
  }
}