import 'package:flutter/material.dart';
//
import '../widgets/place_drawers.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilters;
  const FiltersScreen(
      {Key? key, required this.saveFilters, required this.currentFilters})
      : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool iswarm = false;
  bool iscool = false;
  bool ismod = false;
  bool ishumid = false;

  @override
  initState() {
    setState(() {
      iswarm = widget.currentFilters['Hot'] as bool;
      iscool = widget.currentFilters['Cold'] as bool;
      ismod = widget.currentFilters['Moderate'] as bool;
      ishumid = widget.currentFilters['Humid'] as bool;
    });
    super.initState();
  }

  Widget _buildSwitchListTile(
      String title, String subtitle, bool currentValue, Function handleChange) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(subtitle),
      onChanged: (newValue) => handleChange(newValue),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
        actions: [
          IconButton(
            onPressed: () {
              final Map<String, bool> selectedFilters = {
                'Summer': iswarm,
                'Cold': iscool,
                'Moderate': ismod,
                'Humid': ishumid
              };
              widget.saveFilters(selectedFilters);
            },
            icon: const Icon(Icons.save),
          )
        ],
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15,
            ),
            child: Text(
              'Adjust your preferences',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  'Not Hot',
                  'Only include Warm Places',
                  iswarm,
                  (newValue) {
                    setState(() {
                      iswarm = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Moderate',
                  'Only include Moderate Places',
                  ismod,
                  (newValue) {
                    setState(() {
                      ismod = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Cold',
                  'Only include cold places',
                  iscool,
                  (newValue) {
                    setState(() {
                      iscool = newValue;
                    });
                  },
                ),
                _buildSwitchListTile(
                  'Humid',
                  'Only Rainy places',
                  ishumid,
                  (newValue) {
                    setState(() {
                      ishumid = newValue;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
