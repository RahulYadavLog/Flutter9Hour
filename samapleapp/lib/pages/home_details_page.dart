import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/widgets/home_wedgets/add_to_cart.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: context.canvasColor,
        bottomNavigationBar:   Container(
          color: context.cardColor,
          child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl4.red800.make(),
               AddToCart(catalog: catalog).wh(120, 50)
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
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(
                children: [catalog.name.text.xl4.color(context.accentColor).bold.make(),
          catalog.desc.text.xl.make(),
          10.heightBox,
          "A framework that gives you all of the building blocks you need to build bespoke designs without any annoying nested styles you have to fight to wrap.".text
          .make().p16()
          ],
              ).py24(),
            ),
          ))
          ],
        ),
      ),
    );
  }
}