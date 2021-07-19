import 'package:flutter/material.dart';

class MedsPage extends StatefulWidget {
  const MedsPage({Key? key}) : super(key: key);

  @override
  _MedsPageState createState() => _MedsPageState();
}

class _MedsPageState extends State<MedsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meds Section")),
    );
  }
}
