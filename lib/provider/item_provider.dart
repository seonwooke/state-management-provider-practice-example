import 'package:flutter/material.dart';

import '../model/item_model.dart';

class ItemProvider with ChangeNotifier {
  final List<ItemModel> itemList = ItemModel.itemList;
  final List<ItemModel> cartList = <ItemModel>[];
  int totalPrice = 0;

  void addCart(ItemModel itemModel) {
    totalPrice += itemModel.price;
    cartList.add(itemModel);
    notifyListeners();
  }

  void removeCart(ItemModel itemModel) {
    totalPrice -= itemModel.price;
    cartList.remove(itemModel);
    notifyListeners();
  }
}
