import 'package:flutter/material.dart';
import 'dart:math';
//
import 'screen/categories_place_screen.dart';
import 'screen/tabs_screen.dart';
import 'screen/place_details_screen.dart';
import 'screen/filter_screen.dart';
import 'models/place.dart';
import 'dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class Palette {
  static const Color primary = Color.fromARGB(255, 12, 101, 117);
  static const Color secondary = Color.fromARGB(255, 47, 113, 117);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'warm': false,
    'cool': false,
    'mod': false,
    'humid': false
  };

  List<Place> _availablePlaces = dummyPlaces;
  final List<Place> _favoritePlaces = [];

  void _toggleFavorite(String placeId) {
    final existingIndex =
        _favoritePlaces.indexWhere((place) => place.id == placeId);
    if (existingIndex > -1) {
      setState(() {
        _favoritePlaces.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoritePlaces
            .add(dummyPlaces.firstWhere((place) => place.id == placeId));
      });
    }
  }

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availablePlaces = dummyPlaces.where((place) {
        if (_filters['Warm'] != null && (_filters['Warm'] as bool)) {
          return false;
        }
        if (_filters['Humid'] != null && (_filters['Humid'] as bool)) {
          return false;
        }
        if (_filters['Moderate'] != null && (_filters['Moderate'] as bool)) {
          return false;
        }
        if (_filters['Humid'] != null && (_filters['Humid'] as bool)) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  bool _isPlaceFavorite(String id) {
    return _favoritePlaces.any((place) => place.id == id);
  }

  MaterialColor generateMaterialColor(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  Color shadeColor(Color color, double factor) => Color.fromRGBO(
        shadeValue(color.red, factor),
        shadeValue(color.green, factor),
        shadeValue(color.blue, factor),
        1,
      );

  //app starts here
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bharat Darshan',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white,
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        fontFamily: 'Nunito',
        canvasColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: generateMaterialColor(Palette.primary))
            .copyWith(
          secondary: generateMaterialColor(Palette.secondary),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(favorites: _favoritePlaces),
        CategoryPlaceScreen.routeName: (context) => CategoryPlaceScreen(
              availablePlace: _availablePlaces,
            ),
        PlaceDetailsScreen.routeName: (context) => PlaceDetailsScreen(
              toggleFavorite: _toggleFavorite,
              isFavorite: _isPlaceFavorite,
            ),
        FiltersScreen.routeName: (context) => FiltersScreen(
              saveFilters: _setFilters,
              currentFilters: _filters,
            ),
      },
    );
  }
}
