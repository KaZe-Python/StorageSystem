import 'package:flutter/material.dart';

class SectionPage extends StatefulWidget {
  const SectionPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  _SectionPageState createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  @override
  Widget build(BuildContext context) {
    int i = widget.index;
    return Scaffold(
      appBar: AppBar(title: Text("Section Page")),
      body: Text("$i"),
    );
  }
}
