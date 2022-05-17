import 'package:flutter_catalog/models/catalog.dart';

class CartModel(
  // catalog model
  CatalogModel _catalog;

  // collection of ids - store id of each line
  final List<int> _itemIds = [];
  
  // Get catalog
  CatalogModel get catalog => _catalog;

  // Get items in the cart
  List<Item> get item => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice => 
      items.fold(0, (total,current) => total + current.price);

  // Add item

  void add(Item item){
    _itemIds.add(item.id);
  }

  //  remove item

  void remove(Item item){
    _itemIds.remove(item.id);
  }
)