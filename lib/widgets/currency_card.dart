import 'package:flutter/material.dart';

/** 사용자 지정카드를 만든다 **/
class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;

  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon});

  @override
  Widget build(Object context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Color(0xFF1F2123), borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: Offset(8, 10),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
