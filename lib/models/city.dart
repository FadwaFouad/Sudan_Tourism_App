import 'package:flutter/material.dart';

class City {
  final int id;
  final Map<String, Object> name;
  final Map<String, Object> url;
  final double rating;
  final int reviews;
  final Map<String, Object> description;
  final List<String> images;

  City(
      {this.id,
      this.name,
      this.url,
      this.rating,
      this.reviews,
      this.description,
      this.images});
}

class TravelOption {
  final int id;
  final Map<String, Object> name;
  final String image;
  final IconData icon;

  TravelOption({this.id, this.name, this.image, this.icon});
}
