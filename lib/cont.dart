import 'package:flutter/material.dart';

void main() => runApp(
     Conty()
);

class Conty extends StatelessWidget {
  const Conty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: const Color(0xffEDF1D6),
        appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: 300,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          alignment: Alignment.center,
            padding: EdgeInsets.all(30),
            child: const Text(
              'Hello I am inside a container',
              style: TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
          decoration: BoxDecoration(
            color: const Color(0xff9DC08B),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            border: Border.all(
              color: const Color(0xff40513B),
              width: 2,
              style: BorderStyle.solid
            ),
            boxShadow: [
              const BoxShadow(
                color: Color(0xff996073),
                offset: Offset(7, 7),
                blurRadius: 20,
                spreadRadius: 10
              )
            ]
          )
        ),
        ),
    );
  }
}
