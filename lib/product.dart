
class Product {
  String name;
  String imageUrl;
  double rating;
  double price;
  String description;
  String policy;

  Product(
      {required this.name,
        required this.imageUrl,
        required this.price,
        required this.rating,
        required this.description,
        required this.policy});
}

Product p1 = Product(name: 'Cap1', imageUrl: 'https://m.media-amazon.com/images/I/41RCgv0Jv4L._AC_.jpg', price: 150, rating: 5, description: "Description here", policy: "Returned Policy here");
Product p2 = Product(name: 'Cap2', imageUrl: 'https://m.media-amazon.com/images/I/51mvt0JmvTL._AC_SL1500_.jpg', price: 100, rating: 3, description: 'Description here', policy: 'Returned Policy here');
Product p3 = Product(name: 'Cap3', imageUrl: 'https://m.media-amazon.com/images/I/51mvt0JmvTL._AC_SL1500_.jpg', price: 100, rating: 4, description: 'Description here', policy: 'Returned Policy here');
Product p4 = Product(name: 'Cap4', imageUrl: 'https://m.media-amazon.com/images/I/41RCgv0Jv4L._AC_.jpg', price: 90, rating: 3.5, description: 'Description here', policy: 'Returned Policy here');
Product p5 = Product(name: 'Cap5', imageUrl: 'https://m.media-amazon.com/images/I/51mvt0JmvTL._AC_SL1500_.jpg', price: 150, rating: 5, description: 'Description here', policy: 'Returned Policy here');
Product p6 = Product(name: 'Cap6', imageUrl: 'https://m.media-amazon.com/images/I/41RCgv0Jv4L._AC_.jpg', price: 150, rating: 4, description: 'Description here', policy: 'Returned Policy here');
