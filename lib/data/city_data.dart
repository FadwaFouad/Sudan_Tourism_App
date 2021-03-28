import 'package:flutter/material.dart';

const CITY_DATA = [
  {
    'id': 1,
    'name': 'Khartoum',
    'rating': 4.0,
    'reviews': 295,
    'description':
        'Khartoum city, executive capital of Sudan, just south of the confluence of the Blue and White Nile rivers.' +
            'It has bridge connections with its sister towns, Khartoum North and Omdurman, with which it forms Sudan’s largest conurbation. Originally an Egyptian army camp (pitched 1821), Khartoum grew into a garrisoned army town',
    'images': [
      'assets/images/khartoum1.jpg',
      'assets/images/khartoumHotel.jpg',
      'assets/images/khartoum2.jpg',
      'assets/images/khartoum3.jpg',
    ],
    'hotels': [
      {
        'id': 1,
        'name': 'Corinthia Hotel',
        'des': 'Five-star hotel in central Khartoum',
        'image': 'assets/images/hotel_corin.jpg',
        'review': '1,507',
        'rating': 4.6,
        'loc': 'Khartoum, Tuti Bridge',
      },
      {
        'id': 2,
        'name': 'Al Salam Hotel',
        'des':
            'luxury Khartoum hotel treats guests to spacious five-star accommodations ideal',
        'image': 'assets/images/hotel_salam.jpg',
        'review': '985',
        'rating': 4.5,
        'loc': 'Khartoum, Africa St',
      },
      {
        'id': 3,
        'name': 'Coral Hotel',
        'des': ' hotel that brings the best of Khartoum to your doorstep',
        'image': 'assets/images/hotel_coral.jpg',
        'review': '318',
        'rating': 3.9,
        'loc': 'Khartoum, Al Mogran Area',
      },
      {
        'id': 4,
        'name': 'Kanon Hotel',
        'des': 'Amazing hotel with best possible hotel  experience',
        'image': 'assets/images/hotel_canon.jpg',
        'review': '314',
        'rating': 3.5,
        'loc': 'Khartoum, 15th St',
      },
    ],
    'res': [
      {
        'id': 1,
        'name': 'Ozone Cafe',
        'des':
            'mood for a quick bite, or a steaming cup of coffee with a decadent dessert',
        'image': 'assets/images/res_ozone.jpg',
        'review': '2,887',
        'rating': 4.6,
        'loc': 'Khartoum 2',
      },
      {
        'id': 2,
        'name': 'Pizza Hut',
        'des':
            ' Italian-American cuisine menu, including pizza and pasta, as well as side dishes, salads and desserts.',
        'image': 'assets/images/res_hot.jpg',
        'review': '985',
        'rating': 4.5,
        'loc': 'Khartoum, Al-Riyadh',
      },
      {
        'id': 3,
        'name': 'Bab Al-Yemen Restaurant‎.',
        'des':
            ' A restaurant with high specifications and distinctive sections',
        'image': 'assets/images/res_yamen.jpg',
        'review': '318',
        'rating': 3.9,
        'loc': 'Khartoum, Afica st',
      },
      {
        'id': 4,
        'name': 'GAD Restaurant',
        'des': 'Great Restaurant with all food categories',
        'image': 'assets/images/res_gad.jpg',
        'review': '314',
        'rating': 3.5,
        'loc': 'Khartoum, 33rd St',
      },
    ],
    'places': [
      {
        'id': 1,
        'name': 'Sudan National Museum',
        'des': 'double storied building constructed in 1955',
        'image': 'assets/images/pl_mus.jpg',
        'review': '2,887',
        'rating': 4.6,
        'loc': 'Khartoum, Nile St',
      },
      {
        'id': 2,
        'name': 'Al-Nilin Mosque',
        'des': 'It was built in the 1970s during the Nimeiry era of Sudan',
        'image': 'assets/images/pl_neel.jpg',
        'review': '314',
        'rating': 3.5,
        'loc': 'Khartoum, Omdurman,',
      },
      {
        'id': 3,
        'name': 'Child City',
        'des': 'Great place fro fun to all Family',
        'image': 'assets/images/pl_child.jpg',
        'review': '985',
        'rating': 4.5,
        'loc': 'Khartoum, Africa St',
      },
      {
        'id': 4,
        'name': 'Abdul Gayoom Gate',
        'des':
            'One of the most famous city gates in Sudan, despite the passage of more than 133 years',
        'image': 'assets/images/pl_omdur.jpg',
        'review': '318',
        'rating': 3.9,
        'loc': 'Khartoum, Omdurman',
      },
    ],
    'parks': [],
  }
];

const TREVEL_OPTIONS = [
  {
    'id': 1,
    'name': 'Hotel',
    'icon': Icons.hotel,
    'image': 'assets/images/hotel_opt.jpg',
  },
  {
    'id': 2,
    'name': 'Restaurant',
    'icon': Icons.restaurant,
    'image': 'assets/images/res_opt.jpg',
  },
  {
    'id': 3,
    'name': 'Places',
    'icon': Icons.home_work_rounded,
    'image': 'assets/images/place_option.jpg',
  },
];
