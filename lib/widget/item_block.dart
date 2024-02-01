import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/item_model.dart';
import '../provider/item_provider.dart';

class ItemBlock extends StatelessWidget {
  final ItemModel itemModel;
  final bool isInCart;

  const ItemBlock({
    super.key,
    required this.itemModel,
    required this.isInCart,
  });

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
                color: itemModel.color,
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            /// 아이템 이름, 아이템 가격
            SizedBox(
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// 아이템 이름
                  Text(
                    itemModel.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),

                  /// 아이템 가격
                  Text(
                    '${itemModel.price.toString()}원',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            /// 장바구니 추가
            ElevatedButton(
              onPressed: isInCart
                  ? null
                  : () => Provider.of<ItemProvider>(context, listen: false)
                      .addCart(itemModel),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  return Colors.white;
                }),
                shape: MaterialStateProperty.resolveWith((states) {
                  return RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  );
                }),
                side: MaterialStateProperty.resolveWith((states) {
                  return BorderSide(
                    width: 1,
                    color: isInCart ? Colors.grey : Colors.black,
                  );
                }),
                minimumSize: MaterialStateProperty.resolveWith((states) {
                  return const Size(50, 40);
                }),
                elevation: MaterialStateProperty.resolveWith((states) {
                  return 0;
                }),
              ),
              child: isInCart
                  ? const Icon(Icons.check)
                  : const Text(
                      '담기',
                      style: TextStyle(
                        color: Colors.black,
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
