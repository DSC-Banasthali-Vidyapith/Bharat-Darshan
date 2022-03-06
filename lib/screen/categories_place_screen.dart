import 'package:flutter/material.dart';
//
import '../widgets/place_details.dart';
import '../models/place.dart';

class CategoryPlaceScreen extends StatefulWidget {
  static const routeName = '/category-state';
  final List<Place> availablePlace;
  const CategoryPlaceScreen({Key? key, required this.availablePlace})
      : super(key: key);

  @override
  State<CategoryPlaceScreen> createState() => _CategoryPlaceScreenState();
}

class _CategoryPlaceScreenState extends State<CategoryPlaceScreen> {
  String categoryTitle = '';
  List<Place> displayedPlace = [];
  Color categoryColor = Colors.white;
  bool _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs = ModalRoute.of(context)?.settings.arguments as Map;
      categoryTitle = routeArgs['title'];
      categoryColor = routeArgs['color'];
      final categoryId = routeArgs['id'];
      displayedPlace = widget.availablePlace.where((Place) {
        return Place.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  void _removePlace(String placeId) {
    setState(() {
      displayedPlace.removeWhere((place) => place.id == placeId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: categoryColor,
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Things(
            id: displayedPlace[index].id,
            title: displayedPlace[index].title,
            imageUrl: displayedPlace[index].imageUrl,
            distance: displayedPlace[index].distance,
            affordability: displayedPlace[index].affordability,
          );
        }),
        itemCount: displayedPlace.length,
      ),
    );
  }
}
