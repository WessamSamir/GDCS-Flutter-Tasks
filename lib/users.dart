import 'package:gdsc_tasks/product.dart';

class Users{
  String name;
  int id;
  List<Product> myCartProducts;
  Users({
    required this.name,
    required this.id,
    required this.myCartProducts,
  });
}

Users user = Users(name: "Wessam", id: 1, myCartProducts: []);