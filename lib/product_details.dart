import 'package:flutter/material.dart';
import 'package:gdsc_tasks/product.dart';
import 'package:gdsc_tasks/users.dart';

import 'cart.dart';


class ProductDetails extends StatefulWidget {
  final Product product;
  final Users user;
  const ProductDetails({Key? key, required this.product, required this.user} ) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  int counter = 0;
  bool addedToFavorite = false;
  Color favColor = Colors.cyan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  BackButton(
          color: Colors.cyan,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Image.network(widget.product.imageUrl),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.cyan,
                child: Text(
                  "EGP ${widget.product.price}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(18.0),
                width: 90,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.cyan.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(40.0)),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.cyan.shade700,
                    ),
                    Text(
                      "${widget.product.rating}",
                      style: TextStyle(
                        color: Colors.cyan.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18.0),
                width: 90,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.cyan.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(80.0)),
                ),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      addedToFavorite = !addedToFavorite;
                    });
                  },
                  child: Container(
                    child: Icon(
                      addedToFavorite ? Icons.star : Icons.star_border,
                      color: Colors.cyan.shade700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  width: 350,
                  child: const ExpansionTile(
                    title: Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    children: [
                      Text(
                        //widget.product.description,
                        "Description here",
                        style:  TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  child: const ExpansionTile(
                    title: Text(
                      "Returned Policy",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    children: [
                      Text(
                        //widget.product.policy,
                        "Returned Policy here",
                        style: TextStyle(
                          color: Colors.black, fontSize: 20,),

                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                  thickness: 1,
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 38,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(40.0)),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: (){
                              setState(() {
                                if(counter > 0) {
                                  counter--;
                                }
                              });
                            },
                            child: const Text(
                              "-",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            "$counter",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                          TextButton(
                            onPressed: (){
                              setState(() {
                                counter++;
                              });
                            },
                            child: const Text(
                              "+",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        setState(() {
                          widget.user.myCartProducts.add(widget.product);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan.shade500,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        "add to cart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
