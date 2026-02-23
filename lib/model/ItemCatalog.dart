import 'package:flutter/material.dart';

class ItemCatalog {
  final String title;
  final IconData icon;
  final String description;
  final Widget destination;

  ItemCatalog({
    required this.title,
    required this.icon,
    required this.description,
    required this.destination,
  });
}