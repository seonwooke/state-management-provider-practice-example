import 'package:flutter/material.dart';

class ItemModel {
  final String id;
  final String name;
  final int price;
  final Color color;

  ItemModel({
    required this.id,
    required this.name,
    required this.price,
    required this.color,
  });

  static List<ItemModel> itemList = [
    ItemModel(
      id: '0',
      name: "Red Item",
      price: 10000,
      color: Colors.red,
    ),
    ItemModel(
      id: '1',
      name: "Orange Item",
      price: 12000,
      color: Colors.orange,
    ),
    ItemModel(
      id: '2',
      name: "Yellow Item",
      price: 8000,
      color: Colors.yellow,
    ),
    ItemModel(
      id: '3',
      name: "Green Item",
      price: 20000,
      color: Colors.green,
    ),
    ItemModel(
      id: '4',
      name: "Blue Item",
      price: 15000,
      color: Colors.blue,
    ),
    ItemModel(
      id: '5',
      name: "Navy Item",
      price: 7000,
      color: Colors.blue[900]!,
    ),
    ItemModel(
      id: '6',
      name: "Purple Item",
      price: 30000,
      color: Colors.purple,
    ),
    ItemModel(
      id: '7',
      name: "Blown Item",
      price: 25000,
      color: Colors.brown,
    ),
    ItemModel(
      id: '8',
      name: "Black Item",
      price: 11000,
      color: Colors.black,
    ),
    ItemModel(
      id: '9',
      name: "White Item",
      price: 5000,
      color: Colors.white,
    ),
  ];
}
