part of 'models.dart';

enum ProductType { tipe_32, type_45, type_56, type_86 }

class Product extends Equatable {
  final int id, price;
  final String title, description, image, type;
  final List<ProductType> types;

  Product(
      {this.id,
      this.price,
      this.title,
      this.description,
      this.image,
      this.type,
      this.types = const []});

  @override
  List<Object> get props => [id, price, title, description, image, type, types];
}

// list of products
// for our demo
List<Product> mockProducts = [
  Product(
    id: 1,
    price: 120000000,
    title: "Classic Leather Arm Chair",
    image: "https://minangkabaunews.com/foto_berita/78perumahan.jpg",
    type: "Type32",
    types: [ProductType.tipe_32],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 200000000,
    title: "Poppy Plastic Tub Chair",
    image: "https://minangkabaunews.com/foto_berita/78perumahan.jpg",
    type: "Type45",
    types: [ProductType.type_45],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    price: 150000000,
    title: "Bar Stool Chair",
    image: "https://minangkabaunews.com/foto_berita/78perumahan.jpg",
    type: "Type45",
    types: [ProductType.type_86],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 10,
    price: 180000000,
    title: "Bar Stool Chair",
    image: "https://minangkabaunews.com/foto_berita/78perumahan.jpg",
    type: "Type86",
    types: [ProductType.type_86],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
