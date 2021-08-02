import 'package:samapleapp/models/cart.dart';
import 'package:samapleapp/models/catlog.dart';
import 'package:velocity_x/velocity_x.dart';
class MyStore extends VxStore {
  CatlogModel catalog;
  CartModel cart;
 
MyStore()
{
       catalog=CatlogModel();
    cart=CartModel();
    cart.catalog=catalog;
}


}
