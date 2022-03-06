import 'package:flutter/material.dart';
//
import 'models/category.dart';
import 'models/place.dart';
//import 'screen/filter_screen.dart';

const List<Category> dummyCategories = [
  Category(
    id: 'c1',
    title: 'Jammu & Kashmir',
    color: Color.fromARGB(255, 124, 226, 204),
  ),
  Category(
    id: 'c2',
    title: 'Uttarpradesh',
    color: Color.fromARGB(255, 124, 226, 204),
  ),
  Category(
    id: 'c3',
    title: 'Rajasthan',
    color: Color.fromARGB(255, 124, 226, 204),
  ),
  Category(
    id: 'c4',
    title: 'Delhi',
    color: Color.fromARGB(255, 124, 226, 204),
  ),
];

const dummyPlaces = [
  Place(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Maa Vaishno Devi',
    affordability: Affordability.affordable,
    imageUrl:
        'https://images.thequint.com/thequint%2F2020-04%2F5eb40704-9cdb-49d9-b746-1ca7b4d9c8d7%2FVD.jpg?rect=0%2C0%2C750%2C422&auto=format%2Ccompress&fmt=webp',
    distance: 900,
    thingstoknow: [
      'The best time to visit is during summer when the weather is just perfect on the mountains',
      'You will need to register yourself for the Yatra.',
      'You have the option taking the 12 km trek from Katra',
      'You also have the option of choosing a helicopter service, which is available from Katra to Sanjhichatt helipad',
      'The ArdhKuwari Temple cave is a must visit. The pilgrimage to Vaishnodevi is considered incomplete till this temple is visited.',
    ],
    waysToReach: [
      'Train: Uttar Sampark Kranti (12445)',
      'Bus from Kashmiri Gate Delhi',
      'Fly to Jammu -> Taxi',
    ],
  ),
  Place(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Gulmarg',
    affordability: Affordability.affordable,
    imageUrl:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/1a/2b/ed/gulmarg.jpg?w=1400&h=900&s=1',
    distance: 1300,
    thingstoknow: [
      'The best time to visit is during summer when the weather is just perfect on the mountains',
      'The Kongdori Gulmarg gondola is the 2nd highest cable-car line in the world.',
      'The breathtaking sight of the Alpather Lake comes as the perk of a trekking journey. It is actually located at the foot of the twin Apharwat Peak at an approximate height of 4400 meters'
    ],
    waysToReach: [
      'Train: Uttar Sampark Kranti (12445)',
      'Bus from Kashmiri Gate Delhi',
      'Fly to Jammu -> Taxi',
    ],
  ),
];
