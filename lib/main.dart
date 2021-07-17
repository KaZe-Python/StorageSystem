import 'package:flutter/material.dart';
import 'package:storage_system/utils.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Storage System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  void _onTap(int i) {
    setState(() {
      _index = i;
    });
  }

  Future<void> getBarcodeData() async {
    String resultData = await FlutterBarcodeScanner.scanBarcode(
        "0xFFFFFF", "Close", false, ScanMode.BARCODE);
    print(resultData);
  }

  Widget selectPage(int i) {
    switch (i) {
      case 0:
        return MainPage();
      case 1:
        return SettingsPage();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) => Navigator(
        onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) => Container(
                  child: Scaffold(
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.centerDocked,
                    floatingActionButton: FloatingActionButton(
                      onPressed: getBarcodeData,
                      child: Icon(Icons.add),
                    ),
                    appBar: AppBar(
                      actions: <Widget>[],
                      title: Text(
                        "Storage System",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    bottomNavigationBar: BottomNavigationBar(
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: "Home"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.settings), label: "Setings")
                      ],
                      currentIndex: _index,
                      onTap: _onTap,
                      elevation: 15,
                    ),
                    body: Container(
                      child: selectPage(_index),
                    ),
                  ),
                )),
      );
}
