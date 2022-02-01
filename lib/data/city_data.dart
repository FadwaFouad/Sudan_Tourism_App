import 'package:flutter/material.dart';

const CITY_DATA = [
  {
    'id': 1,
    'name': {
      'en': 'Khartoum',
      'ar': 'الخرطوم',
    },
    'url': {
      'en': 'https://en.m.wikipedia.org/wiki/Khartoum',
      'ar':
          'https://ar.m.wikipedia.org/wiki/%D8%A7%D9%84%D8%AE%D8%B1%D8%B7%D9%88%D9%85',
    },
    'rating': 4.0,
    'reviews': 295,
    'description': {
      'en': 'Khartoum city, executive capital of Sudan, just south of the confluence of the Blue and White Nile rivers.' +
          'It has bridge connections with its sister towns, Khartoum North and Omdurman, with which it forms Sudan’s largest conurbation. Originally an Egyptian army camp (pitched 1821), Khartoum grew into a garrisoned army town',
      'ar': 'مدينة الخرطوم ، العاصمة التنفيذية للسودان ، جنوب التقاء نهري النيل الأزرق والأبيض' +
          'لها روابط جسر مع المدن الشقيقة ، الخرطوم بحري وأمدرمان ، والتي تشكل أكبر تجمع سكني في السودان. في الأصل معسكر للجيش المصري (نُصب عام 1821) ، نمت الخرطوم إلى مدينة عسكرية محصنة ',
    },
    'images': [
      'assets/images/khartoum1.jpg',
      'assets/images/khartoumHotel.jpg',
      'assets/images/khartoum2.jpg',
      'assets/images/khartoum3.jpg',
    ],
    'hotels': [
      {
        'id': 1,
        'name': {
          'en': 'Corinthia Hotel',
          'ar': 'فندق كورنثيا',
        },
        'des': 'Five-star hotel in central Khartoum',
        'image': 'assets/images/hotel_corin.jpg',
        'review': '1,507',
        'rating': 4.6,
        'loc': {
          'en': 'Khartoum, Tuti Bridge',
          'ar': 'الخرطوم، جسر توتي',
        },
      },
      {
        'id': 2,
        'name': {
          'en': 'Al Salam Hotel',
          'ar': 'فندق السلام',
        },
        'des':
            'luxury Khartoum hotel treats guests to spacious five-star accommodations ideal',
        'image': 'assets/images/hotel_salam.jpg',
        'review': '985',
        'rating': 4.5,
        'loc': {
          'en': 'Khartoum, Africa St',
          'ar': 'الخرطوم، شارع افريقيا',
        },
      },
      {
        'id': 3,
        'name': {
          'en': 'Coral Hotel',
          'ar': 'الفنافندق كورال',
        },
        'des': ' hotel that brings the best of Khartoum to your doorstep',
        'image': 'assets/images/hotel_coral.jpg',
        'review': '318',
        'rating': 3.9,
        'loc': {
          'en': 'Khartoum, Al Mogran Area',
          'ar': 'الخرطوم،منطقة المقرن',
        },
      },
      {
        'id': 4,
        'name': {
          'en': 'Kanon Hotel',
          'ar': 'فندق كانون',
        },
        'des': 'Amazing hotel with best possible hotel  experience',
        'image': 'assets/images/hotel_canon.jpg',
        'review': '314',
        'rating': 3.5,
        'loc': {
          'en': 'Khartoum, 15th St',
          'ar': 'الخرطوم، شارع 15',
        },
      },
    ],
    'res': [
      {
        'id': 1,
        'name': {
          'en': 'Ozone Cafe',
          'ar': 'اوزون كافيه',
        },
        'des':
            'mood for a quick bite, or a steaming cup of coffee with a decadent dessert',
        'image': 'assets/images/res_ozone.jpg',
        'review': '2,887',
        'rating': 4.6,
        'loc': {
          'en': 'Khartoum 2',
          'ar': 'الخرطوم 2',
        },
      },
      {
        'id': 2,
        'name': {
          'en': 'Pizza Hut',
          'ar': 'بيتزا هت ',
        },
        'des':
            ' Italian-American cuisine menu, including pizza and pasta, as well as side dishes, salads and desserts.',
        'image': 'assets/images/res_hot.jpg',
        'review': '985',
        'rating': 4.5,
        'loc': {
          'en': 'Khartoum, Al-Riyadh',
          'ar': 'الخرطوم، الرياض',
        },
      },
      {
        'id': 3,
        'name': {
          'en': 'Bab Al-Yemen Restaurant',
          'ar': 'مطعم باب اليمن',
        },
        'des':
            ' A restaurant with high specifications and distinctive sections',
        'image': 'assets/images/res_yamen.jpg',
        'review': '318',
        'rating': 3.9,
        'loc': {
          'en': 'Khartoum, Africa St',
          'ar': 'الخرطوم، شارع افريقيا',
        },
      },
      {
        'id': 4,
        'name': {
          'en': 'GAD Restaurant',
          'ar': 'مطعم جاد',
        },
        'des': 'Great Restaurant with all food categories',
        'image': 'assets/images/res_gad.jpg',
        'review': '314',
        'rating': 3.5,
        'loc': {
          'en': 'Khartoum, 33rd St',
          'ar': 'الخرطوم، شارع 33',
        },
      },
    ],
    'places': [
      {
        'id': 1,
        'name': {
          'en': 'Sudan National Museum',
          'ar': 'متحف السودان الوطني',
        },
        'des': 'double storied building constructed in 1955',
        'image': 'assets/images/pl_mus.jpg',
        'review': '2,887',
        'rating': 4.6,
        'loc': {
          'en': 'Khartoum, Nile St',
          'ar': 'الخرطوم، شارع النيل',
        },
      },
      {
        'id': 2,
        'name': {
          'en': 'Al-Nilin Mosque',
          'ar': 'مسجد النيلين',
        },
        'des': 'It was built in the 1970s during the Nimeiry era of Sudan',
        'image': 'assets/images/pl_neel.jpg',
        'review': '314',
        'rating': 3.5,
        'loc': {
          'en': 'Khartoum, Omdurman',
          'ar': 'الخرطوم، امدرمان',
        },
      },
      {
        'id': 3,
        'name': {
          'en': 'Child City',
          'ar': ' مدينة الطفل',
        },
        'des': 'Great place fro fun to all Family',
        'image': 'assets/images/pl_child.jpg',
        'review': '985',
        'rating': 4.5,
        'loc': {
          'en': 'Khartoum, Africa St',
          'ar': 'الخرطوم، شارع افريقيا',
        },
      },
      {
        'id': 4,
        'name': {
          'en': 'Abdul Gayoom Gate',
          'ar': 'بوابة عبد القيوم',
        },
        'des':
            'One of the most famous city gates in Sudan, despite the passage of more than 133 years',
        'image': 'assets/images/pl_omdur.jpg',
        'review': '318',
        'rating': 3.9,
        'loc': {
          'en': 'Khartoum, Omdurman',
          'ar': 'الخرطوم، امدرمان',
        },
      },
    ],
    'parks': [],
  }
];

const TREVEL_OPTIONS = [
  {
    'id': 1,
    'name': {
      'en': 'Hotel',
      'ar': 'الفنادق',
    },
    'icon': Icons.hotel,
    'image': 'assets/images/hotel_opt.jpg',
  },
  {
    'id': 2,
    'name': {
      'en': 'Restaurant',
      'ar': 'المطاعم',
    },
    'icon': Icons.restaurant,
    'image': 'assets/images/res_opt.jpg',
  },
  {
    'id': 3,
    'name': {
      'en': 'Places',
      'ar': 'الأماكن',
    },
    'icon': Icons.home_work_rounded,
    'image': 'assets/images/place_option.jpg',
  },
];
