import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/item_provider.dart';

class CartBlock extends StatelessWidget {
  final int index;
  const CartBlock({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SizedBox(
        height: 100,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// 아이템 색상
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Provider.of<ItemProvider>(context).cartList[index].color,
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            /// 아이템 이름, 아이템 가격, 장바구니 삭제
            SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// 아이템 이름
                  Text(
                    Provider.of<ItemProvider>(context).cartList[index].name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),

                  /// 아이템 가격
                  Text(
                    '${Provider.of<ItemProvider>(context).cartList[index].price.toString()}원',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            /// 장바구니 삭제
            ElevatedButton(
              onPressed: () {
                Provider.of<ItemProvider>(context, listen: false)
                    .removeCart(index);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  return Colors.red;
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
                '삭제',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
