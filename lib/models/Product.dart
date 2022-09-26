class Product {
  final int id;
  final String title, description, unit;
  final List<String> images;
  final double rating, price, qty;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    this.qty = 1,
    this.unit = "KG",
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 16,
    images: [
      "assets/images/apple.png",
    ],
    title: "Apple",
    price: 100,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 1,
    images: [
      "assets/images/banana.png",
    ],
    title: "Banana",
    price: 40,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/black_grapes.png",
    ],
    title: "Black Grapes",
    price: 150,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/custard_apple.png",
    ],
    title: "Custard Apple",
    price: 100,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/grapes.png",
    ],
    title: "Grapes",
    price: 200,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/green_apple.png",
    ],
    title: "Green Apple",
    price: 100,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/kiwi.png",
    ],
    title: "Kiwi",
    price: 300,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 7,
    images: [
      "assets/images/onion.png",
    ],
    title: "Onion",
    price: 120,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 8,
    images: [
      "assets/images/orange.png",
    ],
    title: "Orange",
    price: 80,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 9,
    images: [
      "assets/images/papaya.png",
    ],
    title: "Papaya",
    price: 90,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 10,
    images: [
      "assets/images/pomegranate.png",
    ],
    title: "Pomegranate",
    price: 110,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 11,
    images: [
      "assets/images/potato.png",
    ],
    title: "Potato",
    price: 170,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 12,
    images: [
      "assets/images/strawberry.png",
    ],
    title: "Strawberry",
    price: 200,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 13,
    images: [
      "assets/images/tomato.png",
    ],
    title: "Tomato",
    price: 60,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 14,
    images: [
      "assets/images/watermelon.png",
    ],
    title: "Watermelon",
    price: 50,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 15,
    images: [
      "assets/images/wheat.jpg",
    ],
    title: "Wheat",
    price: 2000,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "More specifically, a vegetable may be defined as 'any plant, part of which is used for food', a secondary meaning then being 'the edible part of such a plant'.";
