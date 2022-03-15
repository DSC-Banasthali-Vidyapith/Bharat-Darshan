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
  Category(
    id: 'c5',
    title: 'Kerala',
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

  Place(
    id: 'm3',
    categories: [
      'c5',
    ],
    title: 'Alleppey',
    affordability: Affordability.affordable,
    imageUrl:
    'https://images.thrillophilia.com/image/upload/s--HBiOiiBg--/c_fill,g_center,h_642,q_auto,w_1280/f_auto,fl_strip_profile/v1/images/photos/000/012/900/original/1551428022_alleppeyPlaces_feature.png.jpg',
    distance: 2700,
    thingstoknow: [
      'Winters are the best time to visit Allepey as the weather is mild and pleasant.',
      'Alappuzha (Alleppey) is known as ‘the Venice of the East’. It is the picture-perfect place known for its beautiful backwaters and the houseboats offering overnight stays.',
      'The Alappuzha beach with a 137-year-old pier extending into the sea and an old 17th-century lighthouse built by the Portuguese add to the magic of the place.'
    ],
    waysToReach: [
      'Train: NDLS TVC SPL (02432)',
      'Bus from New Delhi',
      'Fly to Ernakulam -> Bus',
    ],
  ),

  Place(
    id: 'm4',
    categories: [
      'c5',
    ],
    title: 'Munnar',
    affordability: Affordability.affordable,
    imageUrl:
    'https://www.clubmahindra.com/blog/media/section_images/shuttersto-967fe278ccd8b98.jpg',
    distance: 2600,
    thingstoknow: [
      'The winter months are by far the best time to visit Munnar since the weather is pleasant.',
      'Munnar has the highest peak in South India, Anamudi, which towers over 2,695 m.',
      'Munnar has a legacy of its own when it comes to the origins and evolution of tea plantations. The famous Tea Museum opened some years ago by Tata Tea houses artifacts, photographs and machineries. The museum is located at the Nallathanni Estate of Tata Tea in Munnar and is worth a visit.'
    ],
    waysToReach: [
      'Train to Kochi (126 km from Munnar) -> Taxi',
      'Bus from New Delhi',
      'Fly to Kochi -> Taxi',
    ],
  ),

  Place(
    id: 'm5',
    categories: [
      'c5',
    ],
    title: 'Wayanad',
    affordability: Affordability.affordable,
    imageUrl:
    'https://img.theculturetrip.com/wp-content/uploads/2018/02/07-featured_image_karikadu_vp_.jpg',
    distance: 2400,
    thingstoknow: [
      'The temperature in Wayanad remains more or less constant throughout the year, but the best time to visit Wayanad is between October and May.',
      'Wayanad is famous for its large amount of camping and trekking trails, breathtaking waterfalls, caves, bird-watching sites, flora, fauna and an overall plethora of magnificent sights.',
      'Kanthanpara Waterfalls is one hotspot in Wayanad that allures tourists from all over the world. It is situated around 22 km from Kalpetta in Wayanad district.',
      'Another must-visit place in Wayanad is the Edakkal Caves. The caves are two natural rock formations believed to have been formed by a large split in a huge rock. The carvings inside are extremely beautiful. '
    ],
    waysToReach: [
      'Train to Calicut (Kozhikode) -> Taxi',
      'Bus from New Delhi',
      'Fly to Calicut (Kozhikode) -> Taxi',
    ],
  ),

  Place(
    id: 'm6',
    categories: [
      'c5',
    ],
    title: 'Kochi',
    affordability: Affordability.affordable,
    imageUrl:
    'https://honoluluhomestay.com/wp-content/uploads/2014/11/chinesefishingnetskochi.jpg',
    distance: 2700,
    thingstoknow: [
      'Winters are by far the best time to visit Cochin as the weather is very pleasant.',
      'Bolghatty Island is a short boat ride away from mainland Kochi and has Bolghatty Palace which is one of the oldest existing Dutch palaces outside Holland.',
      'Vypeen Island is another island that is really popular among visitors to Kochi & Kerala. Vypeen is also the location of Pallipuram Fort which is the oldest surviving fort in India built in 1503.',
      'Just off the Coast of Vypeen Island is Cherai beach which is among the best beaches in Kerala.',
      'The Chinese fishing nets which symbolises Kochi can be seen only in Fort Kochi which may be the only place in the world where the Chinese fishing nets are unique outside China for which the credit goes to the traders from the court of Chinese emperor Kubla Khan.',
    ],
    waysToReach: [
      'Train: HAZRAT NIZAMUDDIN - TRIVANDRUM CENT Rajdhani Express (12432)',
      'Bus from New Delhi',
      'Fly to Kochi',
    ],
  ),

  Place(
    id: 'm7',
    categories: [
      'c5',
    ],
    title: 'Trivandrum',
    affordability: Affordability.affordable,
    imageUrl:
    'https://www.ekeralatourism.net/wp-content/uploads/2018/08/kovlam.jpg',
    distance: 2800,
    thingstoknow: [
      'October to February is the best time to visit Trivandrum, as the winters bestow the place with the most pleasant weather in the entire year.',
      'Padmanabhaswami Temple is a very famous and sacred Hindu temple located in the heart of the city and is one of the best tourist places in Thiruvananthapuram (Trivandrum).',
      'Napier Museum is located inside Trivandrum Zoo which is the oldest zoological garden in India established in 1857 on over 55 acres of land. It also contains Sree Chitra Art Gallery established in 1935 and is one of the best tourist places in Trivandrum.',
      'Kovalam Beach is located at a distance of 16 km from Thiruvananthapuram Central Railway Station and about 10 km from Thiruvananthapuram International Airport. It has a long coastline with substantial palm, a lighthouse, and clear waters, which makes it the main attraction of tourists in Trivandrum.',
    ],
    waysToReach: [
      'Train: NDLS TVC SF SPL (02626)',
      'Bus from New Delhi',
      'Fly to Thiruvananthapuram',
    ],
  ),
];
