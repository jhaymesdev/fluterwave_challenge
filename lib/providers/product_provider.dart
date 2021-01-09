import 'package:flutter/material.dart';
import '../providers/product.dart';


class ProductsProvider with ChangeNotifier{

  List<Product> _products = [
    Product(
      id: 'p1',
      title: 'Cactus',
      description: 'A domestic Cactus',
      price: 29.99,
      shopName: "Omo",
      imageUrl:
      'https://images.unsplash.com/photo-1504648492881-a5150829085c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mjh8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60.jpg',
    ),
    Product(
      id: 'p2',
      title: 'A flower',
      description: 'A nice flower',
      shopName: "Eti",
      price: 59.99,
      imageUrl:
      'https://images.unsplash.com/photo-1518895949257-7621c3c786d7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60.png',
    ),
    Product(
      id: 'p3',
      title: 'A Camera',
      description: 'Dope ass camera',
      price: 19.99,
      shopName: "Humble",
      imageUrl:
      'https://images.unsplash.com/photo-1521499892833-773a6c6fd0b8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60.png',
    ),
    Product(
      id: 'p4',
      title: 'Doors',
      description: 'Get a classic door of any color for yourself.',
      price: 49.99,
      shopName: "Uwak",
      imageUrl:
      'https://images.unsplash.com/photo-1543005240-6a7dcea5bfca?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60.png',
    ),
    Product(
      id: 'p5',
      title: 'Phones',
      description: 'Get a classic door of any color for yourself.',
      price: 49.99,
      shopName: "Uwak",
      imageUrl:
      'https://images.unsplash.com/photo-1586941756923-830029962fd9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8cGhvbmVzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 'p6',
      title: 'A Pen',
      description: 'Get a classic door of any color for yourself.',
      price: 49.99,
      shopName: "Uwak",
      imageUrl:
      'https://images.unsplash.com/photo-1518674660708-0e2c0473e68e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8cGVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
  ];

  List<Product> get products{
    return [..._products];
  }
  //this is used to find product that had same id to decide which to navigate to
 Product findById(String id){
   return _products.firstWhere((element) => element.id == id);
 }
}