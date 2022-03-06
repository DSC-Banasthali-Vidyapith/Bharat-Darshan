import 'package:flutter/material.dart';
//
import '../dummy_data.dart';
import '../widgets/state_places.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/';
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: <Widget>[
          ...dummyCategories.map((categoryItem) {
            return CategoryItem(
              title: categoryItem.title,
              color: categoryItem.color,
              id: categoryItem.id,
            );
          }).toList(),
        ],
      ),
    );
  }
}
