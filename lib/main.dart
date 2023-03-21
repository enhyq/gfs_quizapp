import 'package:flutter/material.dart';
import 'package:gfs_quizapp/quiz_template.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Qiz',
            ),
            SizedBox(
              height: 30,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pop(); // TODO: Screen transition animation
                Navigator.of(context).push(
                    MaterialPageRoute (
                      builder: (BuildContext context) => const QuizTemplate(),
                    ),
                );
              },
              icon: Icon(Icons.local_restaurant_outlined),
            )
          ],
        ),
      ),
    );
  }
}
