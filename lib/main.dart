import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/item_provider.dart';
import 'view/home_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ItemProvider(),
      child: const ShoppingMallApp(),
    ),
  );
}

class ShoppingMallApp extends StatelessWidget {
  const ShoppingMallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
