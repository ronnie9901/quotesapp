import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allscreens/home.dart';

List allListOfCategory = [
  {
    'name': 'General',
    'icon': CupertinoIcons.circle,
    'img': 'assets/catimg/14.jpg',
  },
  {
    'name': ' Favourites',
    'icon': CupertinoIcons.heart,
    'img': 'assets/catimg/myfav.jpeg',
  },
  {
    'name': ' Collection',
    'icon': CupertinoIcons.collections,
    'img': 'assets/catimg/mycol.jpeg',
  },
  {
    'name': ' mood',
    'icon': CupertinoIcons.hand_thumbsup,
    'img': 'assets/catimg/mymood.jpeg',
  },
  {
    'name': ' own quotes',
    'icon': CupertinoIcons.text_quote,
    'img': 'assets/catimg/myqoute.jpeg',
  },
];
List forYouList = [
  {
    'name': 'Motivation',
    'icon': CupertinoIcons.book,
    'img': 'assets/catimg/loyalty.jpeg',
  },
  {
    'name': 'Affirmation',
    'icon': CupertinoIcons.chat_bubble_2,
    'img': 'assets/catimg/ego.jpeg',
  },
  {
    'name': 'Funny',
    'icon': CupertinoIcons.smiley,
    'img': 'assets/affirmatiom/image3.jpeg',
  },
  {
    'name': 'Happy',
    'icon': CupertinoIcons.wand_rays,
    'img': 'assets/catimg/fd.jpeg',
  },
  {
    'name': 'Hope',
    'icon': CupertinoIcons.sun_min,
    'img': 'assets/catimg/love.jpeg',
  },
];
List mostPopularList = [
  {
    'name': 'Love',
    'icon': CupertinoIcons.heart,
    'img': 'assets/catimg/17.jpeg',
  },
  {
    'name': 'Friendship',
    'icon': CupertinoIcons.infinite,
    'img': 'assets/catimg/fd.jpeg',
  },
  {
    'name': 'Loyalty',
    'icon': CupertinoIcons.lock,
    'img': 'assets/catimg/loyalty.jpeg',
  },
  {
    'name': 'Ego',
    'icon': CupertinoIcons.tropicalstorm,
    'img': 'assets/catimg/ego.jpeg',
  },
];
List personalGrowthList = [
  {
    'name': 'Discipline',
    'icon': CupertinoIcons.hare,
    'img': 'assets/catimg/discipline.jpeg',
  },
  {
    'name': 'Self Esteem',
    'icon': CupertinoIcons.greaterthan,
    'img': 'assets/catimg/self.jpeg',
  },
  {
    'name': 'Kindness',
    'icon': CupertinoIcons.wind,
    'img': 'assets/catimg/kind.jpeg',
  },
  {
    'name': 'Gratitude',
    'icon': CupertinoIcons.eye,
    'img': 'assets/catimg/grat.jpeg',
  },
  {
    'name': 'Success',
    'icon': CupertinoIcons.light_min,
    'img': 'assets/catimg/success.jpeg',
  },
];
List hardTimeList = [
  {
    'name': 'Broken',
    'icon': CupertinoIcons.heart_slash,
    'img': 'assets/catimg/3.jpeg',
  },
  {
    'name': 'Sad',
    'icon': CupertinoIcons.drop,
    'img': 'assets/catimg/image1.jpeg',
  },
  {
    'name': 'Deep',
    'icon': CupertinoIcons.cloud_drizzle,
    'img': 'assets/catimg/image22.jpeg',
  },
];
List<String> categories = [
  "Love",
  "Affirmation",
  "Motivation",
  "Deep",
  "Positive",
  "Mental Health",
  "Discipline",
  "Broken",
  "Self Esteem",
  "Success",
  "Friendship",
  "Loyalty",
  "Kindness",
  "Funny",
  "Happy",
  "Sad",
  "Hope",
  "Gratitude",
  "Ego",
  "Patience",
];
List imagelist = [
  'assets/affirmatiom/img1.jpg',
  'assets/affirmatiom/image6.jpeg',
  'assets/affirmatiom/image5.jpeg',
  'assets/affirmatiom/image4.jpeg',
  'assets/affirmatiom/image3.jpeg',
];
List imagelist2 = [
  'assets/catimg/image22.jpeg',
  'assets/catimg/image1.jpeg',
  'assets/catimg/kind.jpeg',
  'assets/catimg/success.jpeg',
  'assets/catimg/grat.jpeg'
];
List imagelis3 = [
  'assets/catimg/general.jpeg',
  'assets/catimg/myfav.jpeg',
  'assets/catimg/mycol.jpeg',
  'assets/catimg/mymood.jpeg',
  'assets/catimg/myqoute.jpeg'
];
List<Quotemodel> fav = [];
int selectindex = 0;
String imgbg = 'assets/affirmatiom/image6.jpeg';
String selectcat = '';
bool istrue = true;
var font = 'Orbitron';
List fontFamilyList = [
  'Dancing Script',
  'Josefin Sans',
  'Anton',
  'Exo 2',
  'Pacifico',
  'Lobster',
  'Imbue',
  'Crimson Text',
  'Prompt',
  'Varela Round',
  'Licorice',
  'Play',
  'IBM Plex Mono',
  'Caveat',
  'Chakra Petch',
  'Shadows Into Light',
  'Abril Fatface',
  'Satisfy',
  'Lilita One',
  'Galada',
  'Permanent Marker',
  'Indie Flower',
  'Edu NSW ACT Foundation',
  'Orbitron',
  'Cinzel',
];
Color c1 = Colors.white;
List colorlist = [
  Colors.tealAccent,
  Colors.white,
  Colors.black,
  Colors.yellow,
  Colors.pink,
  Colors.grey,
  Colors.green,
  Colors.purple,
  Colors.red,
  Colors.pinkAccent,
  Colors.blue,
];
