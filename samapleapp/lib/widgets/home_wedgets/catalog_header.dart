import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

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