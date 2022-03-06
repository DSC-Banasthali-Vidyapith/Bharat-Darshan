import 'package:flutter/material.dart';
//
import '../models/place.dart';
import '../widgets/place_details.dart';

class FavoritesScreen extends StatelessWidget {
  static const routeName = '/favorites';
  final List<Place> place;
  const FavoritesScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: place.isEmpty
            ? const Text('No Favorites Yet')
            : ListView.builder(
                itemBuilder: (context, index) {
                  return Things(
                    id: place[index].id,
                    title: place[index].title,
                    imageUrl: place[index].imageUrl,
                    distance: place[index].distance,
                    affordability: place[index].affordability,
                  );
                },
                itemCount: place.length,
              ),
      ),
    );
  }
}
