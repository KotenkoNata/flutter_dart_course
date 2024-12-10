import 'package:flutter/material.dart';
import 'package:flutter_dart_course/models/categories.dart';

class GroceryItem {
  const GroceryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.category,
});

  final String id;
  final String name;
  final int quantity;
  final Category category;
}