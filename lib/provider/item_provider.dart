import 'package:flutter/material.dart';

import '../model/item_model.dart';

class ItemProvider with ChangeNotifier {
  final List<ItemModel> itemList = ItemModel.itemList;
  final List<ItemModel> cartList = <ItemModel>[];
  int totalPrice = 0;

  void addCart(int index) {
    itemList[index].isCart = true;
    totalPrice += itemList[index].price;
    cartList.add(itemList[index]);
    notifyListeners();
  }

  void removeCart(int index) {
    itemList[index].isCart = false;
    totalPrice -= itemList[index].price;
    cartList.remove(itemList[index]);
    notifyListeners();
  }
}
