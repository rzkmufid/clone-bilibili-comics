import 'package:flutter/material.dart';

class HomeDetailScreens extends StatelessWidget {
  const HomeDetailScreens({super.key, this.nilai});

  final int? nilai;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details Home',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Center(
        child:
            Text('Nilai adalah $nilai', style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
