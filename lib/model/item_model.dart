import 'package:flutter/material.dart';

class ItemModel {
  final String name;
  final int price;
  final Color color;
  bool isCart;

  ItemModel({
    required this.name,
    required this.price,
    required this.color,
    required this.isCart,
  });

  static List<ItemModel> itemList = [
    ItemModel(
      name: "Red Item",
      price: 10000,
      color: Colors.red,
      isCart: false,
    ),
    ItemModel(
      name: "Orange Item",
      price: 12000,
      color: Colors.orange,
      isCart: false,
    ),
    ItemModel(
      name: "Yellow Item",
      price: 8000,
      color: Colors.yellow,
      isCart: false,
    ),
    ItemModel(
      name: "Green Item",
      price: 20000,
      color: Colors.green,
      isCart: false,
    ),
    ItemModel(
      name: "Blue Item",
      price: 15000,
      color: Colors.blue,
      isCart: false,
    ),
    ItemModel(
      name: "Navy Item",
      price: 7000,
      color: Colors.blue[900]!,
      isCart: false,
    ),
    ItemModel(
      name: "Purple Item",
      price: 30000,
      color: Colors.purple,
      isCart: false,
    ),
    ItemModel(
      name: "Blown Item",
      price: 25000,
      color: Colors.brown,
      isCart: false,
    ),
    ItemModel(
      name: "Black Item",
      price: 11000,
      color: Colors.black,
      isCart: false,
    ),
    ItemModel(
      name: "White Item",
      price: 5000,
      color: Colors.white,
      isCart: false,
    ),
  ];
}
