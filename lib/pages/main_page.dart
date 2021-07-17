import 'package:flutter/material.dart';
import 'package:storage_system/misc/seccard.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void changePage() {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return Scaffold();
    }));
  }

  void x() {
    print("no func");
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SecCard(
        title: "Main",
        subtitle: "1",
        icon: Icon(Icons.snippet_folder),
        moveToSection: changePage,
      ),
      SecCard(
        title: "Second",
        subtitle: "2",
        icon: Icon(Icons.snippet_folder),
        moveToSection: x,
      ),
      SecCard(
          title: "Last",
          subtitle: "3",
          icon: Icon(Icons.snippet_folder),
          moveToSection: x)
    ]);
  }
}
