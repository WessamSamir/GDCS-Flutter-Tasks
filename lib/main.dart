import 'package:flutter/material.dart';
import 'package:gdsc_tasks/login.dart';
import 'package:gdsc_tasks/product.dart';
import 'package:gdsc_tasks/product_details.dart';
import 'market.dart';

void main()
{
  runApp(
    const myApp(),
  );
}


class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Market(),
    );
  }
}





