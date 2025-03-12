
class Product {
  final String image;
  final String name;
  final String price;
  final double rating;
  final int reviews;
  final String? oldPrice;

  Product(this.image, this.name, this.price, this.rating, this.reviews,
      {this.oldPrice});
}
