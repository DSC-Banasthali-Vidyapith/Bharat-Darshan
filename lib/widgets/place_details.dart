import 'package:flutter/material.dart';
//
import '../models/place.dart';
import '../screen/place_details_screen.dart';

class Things extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int distance;
  final Affordability affordability;

  const Things(
      {Key? key,
      required this.id,
      required this.title,
      required this.imageUrl,
      required this.distance,
      required this.affordability})
      : super(key: key);

  void selectPlace(BuildContext context) {
    Navigator.of(context)
        .pushNamed(PlaceDetailsScreen.routeName, arguments: id);
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.affordable:
        return 'Affordable';
      case Affordability.luxurious:
        return 'Luxurious';
      case Affordability.pricey:
        return 'Pricey';
      default:
        return 'No affordability information';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectPlace(context),
      enableFeedback: true,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    width: 220,
                    color: Colors.black54,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 238, 212, 212),
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.schedule),
                      ),
                      Text('$distance km')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
