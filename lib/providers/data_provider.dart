import 'package:flutter/material.dart';

import '../models/preview.dart';
import '../data/preview_data.dart';
import '../data/city_data.dart';
import '../data/culture_data.dart';
import '../data/food_data.dart';
import '../data/cities_data.dart';
import '../models/city.dart';
import '../models/item.dart';
import '../models/place.dart';

class DataProviders with ChangeNotifier {
  List<Preview> getPreviewData() {
    final list = PREVIEW_DATA.map((data) {
      return Preview(
        id: data['id'],
        city: data['city'],
        place: data['place'],
        image: data['image'],
        isFav: data['fav'],
        cityAr: data['city_ar'],
        placeAr: data['place_ar'],
      );
    }).toList();

    return list;
  }

  List<Item> getCitiesData() {
    final list = CITIES_DATA.map((data) {
      return Item(
          id: data['id'],
          name: data['name'],
          image: data['image'],
          isFav: data['isFavorite']);
    }).toList();

    return list;
  }

  List<Item> getFoodData() {
    final list = FOOD_DATA.map((data) {
      return Item(
          id: data['id'],
          name: data['name'],
          image: data['image'],
          isFav: data['isFavorite']);
    }).toList();

    return list;
  }

  List<Item> getCultureData() {
    final list = CULTURE_DATA.map((data) {
      return Item(
          id: data['id'],
          name: data['name'],
          image: data['image'],
          isFav: data['isFavorite']);
    }).toList();

    return list;
  }

  List<City> getCityData() {
    final list = CITY_DATA.map((data) {
      return City(
          id: data['id'],
          name: data['name'],
          url: data['url'],
          rating: data['rating'],
          reviews: data['reviews'],
          description: data['description'],
          // as List<String>
          images: data['images']);
    }).toList();

    return list;
  }

  List<TravelOption> getCityTravelOption() {
    final list = TREVEL_OPTIONS.map((data) {
      return TravelOption(
        id: data['id'],
        name: data['name'],
        icon: data['icon'],
        image: data['image'],
      );
    }).toList();

    return list;
  }

  List<Place> getHotelsList() {
    final hotelData = CITY_DATA.first['hotels'] as List;
    final hotels = hotelData
        .map((hotel) => Place(
              id: hotel['id'],
              description: hotel['des'],
              image: hotel['image'],
              location: hotel['loc'],
              name: hotel['name'],
              rating: hotel['rating'],
              reviews: hotel['review'],
            ))
        .toList();
    return hotels;
  }

  List<Place> getResList() {
    final resData = CITY_DATA.first['res'] as List;
    final res = resData
        .map((res) => Place(
              id: res['id'],
              description: res['des'],
              image: res['image'],
              location: res['loc'],
              name: res['name'],
              rating: res['rating'],
              reviews: res['review'],
            ))
        .toList();
    return res;
  }

  List<Place> getPlacesList() {
    final placesData = CITY_DATA.first['places'] as List;
    final places = placesData
        .map((place) => Place(
              id: place['id'],
              description: place['des'],
              image: place['image'],
              location: place['loc'],
              name: place['name'],
              rating: place['rating'],
              reviews: place['review'],
            ))
        .toList();
    return places;
  }
}
