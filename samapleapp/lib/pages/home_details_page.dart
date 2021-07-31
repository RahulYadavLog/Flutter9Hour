import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class HomeDetailsPage extends StatelessWidget {

final Item catalog;

  const HomeDetailsPage({Key? key,required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: MyThemes.creamColor,
        bottomNavigationBar:   Container(
          color: Colors.white,
          child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl4.red800.make(),
                ElevatedButton(onPressed:() {}, child: "Buy".text.make(),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyThemes.darkBluishColor),
                shape: MaterialStateProperty.all(StadiumBorder())),
                
                ).wh(100, 50)
              ],
            ).p32(),
        ),
        body: Column(
          children: [Hero(tag : Key(catalog.id.toString()),child: Image.network(catalog.image)).h32(context),
          Expanded(child: VxArc(
            height: 30,
            arcType: VxArcType.CONVEY,
            edge: VxEdge.TOP,
    
            child: Container(
              color: Colors.white,
              width: context.screenWidth,
              child: Column(
                children: [catalog.name.text.xl4.color(MyThemes.darkBluishColor).xl.bold.make(),
          catalog.desc.text.make(),
          10.heightBox,],
              ).py64(),
            ),
          ))
          ],
        ),
      ),
    );
  }
}