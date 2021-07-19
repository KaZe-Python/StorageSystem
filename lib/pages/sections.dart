import 'package:flutter/material.dart';
import 'package:storage_system/pages/items_page.dart';
import 'package:storage_system/pages/meds_page.dart';
import 'food_page.dart';

class Sections extends StatefulWidget {
  const Sections({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  @override
  Widget build(BuildContext context) {
    switch (widget.index) {
      case 1:
        return FoodPage();
      case 2:
        return ItemsPage();
      case 3:
        return MedsPage();
      default:
        return Container();
    }
  }
}
