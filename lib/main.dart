

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorApp(),
    );
  }
}

class ColorApp extends StatefulWidget {
  const ColorApp({super.key});

  @override
  State<ColorApp> createState() => _ColorAppState();
}

class _ColorAppState extends State<ColorApp> {
  List<Color> clr = [
    Colors.black,
    Colors.amber,
    Colors.blue,
    Colors.brown,
    Colors.cyan,
    Colors.red
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Container(
          height: 400,
          width: 400,
          color: clr[index],
          child: GestureDetector(
            onTap: () {
              setState(() {
                index = (index + 1) % clr.length;
              });
            },
          ),
        ))
      ],
    ));
  }
}
