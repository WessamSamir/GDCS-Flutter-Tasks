import 'package:flutter/material.dart';
import 'package:gdsc_tasks/product.dart';
import 'package:gdsc_tasks/users.dart';

class Cart extends StatefulWidget {
  //final Product product;
  final Users user;
  const Cart({Key? key, required this.user}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.cyan,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "My Cart",
          style: TextStyle(
            color: Colors.cyan,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 2000,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: widget.user.myCartProducts.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          child: CircleAvatar(
                            radius: 27,
                            backgroundColor: Colors.white,
                            child: Image.network(widget.user.myCartProducts.elementAt(index).imageUrl),
                          ),
                        ),
                        title: Text(
                          widget.user.myCartProducts.elementAt(index).name,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          "${widget.user.myCartProducts.elementAt(index).price}",
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: (){
                            setState(() {
                              widget.user.myCartProducts.removeAt(index);
                            });
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
