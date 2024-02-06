import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
// This widget is the root of your application .
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route␣Push␣Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstRoute(),
// Initially FirstRoute
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pass data to other page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              child: const Text('Go to second'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(data: 'Hello␣there␣from␣the␣first␣page! '),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
// This is a String for the sake of an example .
// You can use any type you want .
// TODO 2: Create data as String HERE
  SecondPage({
    required Key key,
// TODO 3: define data as argument of constructor HERE
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing ␣ App '),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Second␣Page',
              style: TextStyle(fontSize: 20, color: Colors.blueAccent),
            ),
// TODO 4: Show data with Text Widget Here .
          ],
        ),
      ),
    );
  }
}
