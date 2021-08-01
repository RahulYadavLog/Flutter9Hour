import 'package:samapleapp/models/catlog.dart';
import 'package:samapleapp/pages/cart_page.dart';

class CartModel{

  late CatlogModel _catalog;
  final List<int> _itemId=[];
  CatlogModel get catalog=>_catalog;
  set catalog(CatlogModel newCatalog)
  {
    _catalog=newCatalog;
  }
  List<Item> get items=>_itemId.map((id) => _catalog.getById(id)).toList();
  num get totalPrice=>items.fold(0, (total, current) => total+current.price)

  void add(Item item)
  {
    _itemId.add(item.id);
  }
  void remove(Item item)
  {
    _itemId.remove(item.id);
  }
}