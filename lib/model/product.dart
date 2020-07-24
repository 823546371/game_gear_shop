import 'dart:core';

class Product {
  String name, imagePic;
  double rating, price;

  Product(this.name, this.price, this.imagePic, this.rating);
}

List<Product> productList = [
  Product('Dualshock 4\nRed Camouflage', 60, 'assets/images/product1.png', 4.0),
  Product('Dualshock 4\nMidnight Blue', 55, 'assets/images/product2.png', 4.0),
  Product('Dualshock 4\nGlacier White', 50, 'assets/images/product3.png', 4.0),
];
