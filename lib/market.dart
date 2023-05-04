import 'package:flutter/material.dart';
import 'package:gdsc_tasks/product.dart';
import 'package:gdsc_tasks/cards.dart';
import 'package:gdsc_tasks/product_details.dart';
import 'package:gdsc_tasks/users.dart';

import 'cart.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  List<Product> products = [
    p1,
    p2,
    p3,
    p4,
    p5,
    p6,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Online Market",
          style: TextStyle(
            color: Colors.cyan,
          ),
        ),
        leading: const BackButton(
          color: Colors.cyan,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: SingleChildScrollView(
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: products.map((e) => Cards(product: e, user: user,)).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Cart
            (user: user,)
          ));
        },
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
