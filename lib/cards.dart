import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gdsc_tasks/product_details.dart';
import 'package:gdsc_tasks/users.dart';
import 'product.dart';

class Cards extends StatelessWidget {
  final Product product;
  final Users user;
  const Cards({Key? key,required this.product, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProductDetails
          (product: product, user: user,)
        ));
      },
      child: Card(
        child: Container(
          height: currentHeight * 0.3,
          width: currentWidth * 0.43,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(product.imageUrl),
                const SizedBox(height: 20,),
                Text(product.name,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 10,),
                RatingBarIndicator(
                  itemBuilder: (context, _) =>
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  rating: product.rating,
                  itemCount: 5,
                  itemSize: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$${product.price}',
                      style: const TextStyle(fontSize: 15),
                    ),
                    const Icon(Icons.shopping_cart,
                      color: Colors.cyan,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
