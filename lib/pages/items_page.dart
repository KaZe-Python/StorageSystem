import 'package:flutter/material.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  List<Widget> items = [];

  List<Widget> getWidgets() {
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Items Section")),
        body: Row(
          children: getWidgets(),
        ));
  }
}
