import 'package:flutter/material.dart';

var kuki = 0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(151, 191, 167, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(155, 191, 151, 1),
          title: const Center(
            child: Text('Kuki Counter App'),
          ),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [const MyAppHome()])),
      ),
    );
  }
}

class MyAppHome extends StatefulWidget {
  const MyAppHome({super.key});

  @override
  State<MyAppHome> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          '$kuki',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 45),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Ink(
                decoration: const ShapeDecoration(
                    color: Color.fromRGBO(191, 187, 151, 1),
                    shape: CircleBorder()),
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        kuki += 1;
                      });
                    },
                    icon: const Icon(Icons.plus_one)),
              ),
            ),
            FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(191, 187, 151, 1),
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    kuki = 0;
                  });
                },
                child: const Text(
                  'Restart counting',
                  style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                )),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Ink(
                  decoration: const ShapeDecoration(
                      color: Color.fromRGBO(191, 187, 151, 1),
                      shape: CircleBorder()),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          kuki -= 1;
                        });
                      },
                      icon: const Icon(Icons.exposure_minus_1))),
            )
          ],
        ),
      ],
    );
  }
}
