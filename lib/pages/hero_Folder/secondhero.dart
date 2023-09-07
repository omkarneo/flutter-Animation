import 'package:flutter/material.dart';

class SecondHero extends StatefulWidget {
  const SecondHero({super.key});

  @override
  State<SecondHero> createState() => _SecondHeroState();
}

class _SecondHeroState extends State<SecondHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              child: const Card(
                child: Column(
                  children: [
                    Hero(
                      tag: "1sttag",
                      child: Icon(
                        Icons.one_k,
                        size: 350,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text("1 Thousand"),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
