class ProductModel {
  int id;
  String type;
  String description;
  double price;
  String path;

  ProductModel({
    required this.id,
    required this.type,
    required this.description,
    required this.price,
    required this.path,
  });
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    type: "Nike",
    description: "Zoom shoe",
    price: 12.0,
    path: "assets/nike_1.png",
  ),
  ProductModel(
    id: 2,
    type: "Nike",
    description: "Human Race",
    price: 20.0,
    path: "assets/nike_2.png",
  ),
  ProductModel(
    id: 3,
    type: "Adidas",
    description: "Joyraide",
    price: 15.0,
    path: "assets/nike_3.png",
  ),
  ProductModel(
    id: 4,
    type: "Adidas",
    description: "Street Ball",
    price: 120.0,
    path: "assets/nike_4.png",
  ),
  ProductModel(
    id: 5,
    type: "Nike",
    description: "Pegasus",
    price: 120.0,
    path: "assets/nike_5.png",
  ),
  ProductModel(
    id: 6,
    type: "Nike",
    description: "Equipment",
    price: 120.0,
    path: "assets/nike_6.png",
  ),
  ProductModel(
    id: 7,
    type: "Adidas",
    description: "EQC Gazzelle",
    price: 120.0,
    path: "assets/nike_7.png",
  ),
  ProductModel(
    id: 8,
    type: "Nike",
    description: "Race X10",
    price: 120.0,
    path: "assets/nike_8.png",
  ),
  ProductModel(
    id: 9,
    type: "Adidas",
    description: "Z9 shoe",
    price: 120.0,
    path: "assets/nike_9.png",
  ),
  ProductModel(
    id: 10,
    type: "Adidas",
    description: "Shoe Ball",
    price: 120.0,
    path: "assets/nike_10.png",
  ),
];
