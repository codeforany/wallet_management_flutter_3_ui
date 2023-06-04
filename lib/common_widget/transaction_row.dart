import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class TransactionRow extends StatelessWidget {
  const TransactionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Color(0xFFD4CEFE), offset: Offset(0, 7), blurRadius: 15)
          ]),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                color: Color(0xffFFE5F3),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: TColor.primary,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Buyinf Blue Dress",
                  maxLines: 1,
                  style: TextStyle(
                      color: Color(0xff5C5C5C),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "6/5/2021 4:20pm",
                  maxLines: 1,
                  style: TextStyle(
                    color: Color(0xff5C5C5C),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "-54\$",
            maxLines: 1,
            style: TextStyle(
                color: Colors.red, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
