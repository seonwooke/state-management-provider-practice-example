import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/item_provider.dart';
import '../widget/cart_block.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

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
        '장바구니',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    );
  }

  _bodyWidget(context) {
    return Column(
      children: [
        /// 총 금액, 구매하기
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// 총 금액
              Text(
                '${Provider.of<ItemProvider>(context).totalPrice.toString()}원',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              /// 구매하기
              ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    return Colors.black;
                  }),
                  shape: MaterialStateProperty.resolveWith((states) {
                    return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    );
                  }),
                  minimumSize: MaterialStateProperty.resolveWith((states) {
                    return const Size(50, 40);
                  }),
                  elevation: MaterialStateProperty.resolveWith((states) {
                    return 0;
                  }),
                ),
                child: const Text(
                  '구매하기',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Divider(color: Colors.black),
        const SizedBox(height: 10),

        /// 장바구니 목록
        Expanded(
          child: ListView.builder(
            itemCount: Provider.of<ItemProvider>(context).cartList.length,
            itemBuilder: (context, index) {
              return CartBlock(index: index);
            },
          ),
        ),
      ],
    );
  }
}
