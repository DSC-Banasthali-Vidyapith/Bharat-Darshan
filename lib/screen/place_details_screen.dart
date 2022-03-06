import 'package:flutter/material.dart';
//
import '../dummy_data.dart';

class PlaceDetailsScreen extends StatelessWidget {
  static const String routeName = '/Place-details';
  final Function toggleFavorite;
  final Function isFavorite;
  const PlaceDetailsScreen(
      {Key? key, required this.toggleFavorite, required this.isFavorite})
      : super(key: key);

  Widget buildSectionTitle(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  Widget buildCustomList(BuildContext context, List list) {
    return Column(
      children: list.map((listItem) {
        return SizedBox(
          width: double.infinity,
          child: Card(
            color: Theme.of(context).colorScheme.secondary,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                listItem,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final placeId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedPlace =
        dummyPlaces.firstWhere((place) => place.id == placeId);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 12, 114, 109),
        titleTextStyle:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        title: Text(' ${selectedPlace.title}'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedPlace.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              buildSectionTitle('THINGS TO KNOW'),
              buildCustomList(context, selectedPlace.thingstoknow),
              buildSectionTitle('WAYS TO REACH'),
              buildCustomList(context, selectedPlace.waysToReach)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isFavorite(placeId) ? Icons.star : Icons.star_border),
        onPressed: () {
          toggleFavorite(placeId);
        },
        elevation: 10,
        foregroundColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
