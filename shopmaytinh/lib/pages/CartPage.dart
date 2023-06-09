import 'package:flutter/material.dart';

import '../widgets/CartAppBar.dart';
import '../widgets/CartBottomNavBar.dart';
import '../widgets/CartItemSamples.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            //tempory height
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color.fromARGB(15, 113, 113, 113),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(children: [
              CartItemSamples(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(222, 204, 44, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Thêm mã giảm giá",
                        style: TextStyle(
                          color: Color.fromRGBO(222, 204, 44, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
