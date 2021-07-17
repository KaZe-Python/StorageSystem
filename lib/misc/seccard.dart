import 'package:flutter/material.dart';

class SecCard extends StatefulWidget {
  const SecCard(
      {Key? key,
      required this.index,
      required this.title,
      required this.icon,
      required this.subtitle,
      required this.moveToSection})
      : super(key: key);

  final int index;
  final String title;
  final String subtitle;
  final Widget icon;
  final void Function(int index) moveToSection;

  @override
  _SecCardState createState() => _SecCardState();
}

class _SecCardState extends State<SecCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      ListTile(
          leading: widget.icon,
          title: Text(widget.title),
          subtitle: Text(widget.subtitle)),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        TextButton(
          child: const Text("Open Section"),
          onPressed: () => widget.moveToSection(widget.index),
        ),
        const SizedBox(width: 8),
        TextButton(onPressed: () {}, child: const Text("Try Button 2")),
        const SizedBox(width: 8)
      ])
    ])));
  }
}
