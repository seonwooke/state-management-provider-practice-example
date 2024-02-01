import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/item_provider.dart';
import '../widget/item_block.dart';
import 'cart_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBarWidget(context),
      body: _bodyWidget(context),
    );
  }

  _appBarWidget(context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        '쇼핑몰',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CartView(),
              ),
            );
          },
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  _bodyWidget(context) {
    final cartItemIdList = Provider.of<ItemProvider>(context)
        .cartList
        .map((itemModel) => itemModel.id)
        .toList();

    /// 아이템 목록
    return ListView.builder(
      itemCount: Provider.of<ItemProvider>(context).itemList.length,
      itemBuilder: (context, index) {
        return ItemBlock(
          itemModel: Provider.of<ItemProvider>(context).itemList[index],
          isInCart: cartItemIdList.contains(
            Provider.of<ItemProvider>(context).itemList[index].id,
          ),
        );
      },
    );
  }
}
