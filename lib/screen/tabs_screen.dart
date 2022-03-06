import 'package:flutter/material.dart';
//
import 'categories_screen.dart';
import '../widgets/place_drawers.dart';
import 'favourites_screen.dart';
import '../models/place.dart';

class TabsScreen extends StatefulWidget {
  final List<Place> favorites;
  const TabsScreen({Key? key, required this.favorites}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Widget> _pages;

  final List _pageTitles = const [
    'Dekho Apna Desh',
    'Favorites',
  ];

  @override
  initState() {
    _pages = [
      const CategoriesScreen(),
      FavoritesScreen(place: widget.favorites),
    ];
    super.initState();
  }

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitles[_selectedPageIndex]),
      ),
      drawer: const MainDrawer(),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Color.fromARGB(255, 242, 245, 245),
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
        enableFeedback: true,
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              Icons.category,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
