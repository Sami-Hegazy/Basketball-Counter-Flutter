import 'package:flutter/material.dart';
import 'home_body.dart';

void main() {
  runApp(const BasketBall());
}

class BasketBall extends StatelessWidget {
  const BasketBall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BasketBall Counter',
      home: const HomePage(),
      theme: ThemeData(primaryColor: Colors.orange),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BasketBall Counter'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: const HomeBody(),
    );
  }
}
