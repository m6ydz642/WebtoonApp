import 'package:flutter/material.dart';
import 'package:webtoonapp/widgets/currency_card.dart';
import 'package:webtoonapp/widgets/custombutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hey, Selena",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Welcome back",
                        style: TextStyle(color: Colors.white.withOpacity(0.5)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                "Total Balance",
                style: TextStyle(
                    fontSize: 22, color: Colors.white.withOpacity(0.8)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$5 194 482",
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                      text: "Transfer",
                      bgColor: Colors.amber,
                      textColor: Colors.black),
                  CustomButton(
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                    text: 'Request',
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wallets",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8), fontSize: 18),
                  )
                ],
              ),
              CurrencyCard(
                name: 'Euro',
                code: 'EUR',
                amount: '6 428',
                icon: Icons.euro_rounded,
              ),
              CurrencyCard(
                name: 'BitCoin',
                code: 'BTC',
                amount: '9 885',
                icon: Icons.currency_bitcoin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
