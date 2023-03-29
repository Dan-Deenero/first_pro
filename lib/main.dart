import 'package:flutter/material.dart';

void main() => runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _increaseCounter(){
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter(){
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Ninjas"),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This Button was clicked',
              style: TextStyle(
                  fontSize: 22
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 40,
                color: Colors.green[700]
              ),
            ),
            const Text(
              'Times',
              style: TextStyle(
                  fontSize: 22
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => _decreaseCounter(),
            backgroundColor: Colors.green[900],
            child: const Icon(Icons.minimize),
          ),
          FloatingActionButton(
            onPressed: () => _increaseCounter(),
            backgroundColor: Colors.green[900],
            child: const Icon(Icons.add),
          ),
        ],
      )
    );
  }
}






