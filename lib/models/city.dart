import 'package:flutter/material.dart';

class City {
  final int id;
  final String name;
  final double rating;
  final int reviews;
  final String description;
  final List<String> images;

  City(
      {this.id,
      this.name,
      this.rating,
      this.reviews,
      this.description,
      this.images});
}

class TravelOption {
  final int id;
  final String name;
  final String image;
  final IconData icon;

  TravelOption({this.id, this.name, this.image, this.icon});
}