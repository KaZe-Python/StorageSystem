import 'package:flutter/material.dart';
import 'section_page.dart';
import 'package:storage_system/misc/seccard.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void changePage(int i) {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return SectionPage(index: i);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SecCard(
        index: 1,
        title: "Main",
        subtitle: "1",
        icon: Icon(Icons.snippet_folder),
        moveToSection: changePage,
      ),
      SecCard(
        index: 2,
        title: "Second",
        subtitle: "2",
        icon: Icon(Icons.snippet_folder),
        moveToSection: changePage,
      ),
      SecCard(
          index: 3,
          title: "Last",
          subtitle: "3",
          icon: Icon(Icons.snippet_folder),
          moveToSection: changePage)
    ]);
  }
}
