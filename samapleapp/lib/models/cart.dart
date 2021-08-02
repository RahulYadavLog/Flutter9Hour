import 'package:samapleapp/models/catlog.dart';
class CartModel{

  static final cartModel=CartModel._internal();
  CartModel._internal();
  factory CartModel()=>cartModel;
  

  late CatlogModel _catalog;
  final List<int> _itemId=[];
  CatlogModel get catalog=>_catalog;
  set catalog(CatlogModel newCatalog)
  {
    assert(newCatalog!=null);
    
    _catalog=newCatalog;

  }
  List<Item> get items=>_itemId.map((id) => _catalog.getById(id)).toList();
  num get totalPrice=>items.fold(0, (total, current) => total+current.price);

  void add(Item item)
  {
    _itemId.add(item.id);
  }
  void remove(Item item)
  {
    _itemId.remove(item.id);
  }
}
