import 'package:flutter/material.dart';

class ThirdHero extends StatefulWidget {
  const ThirdHero({super.key});

  @override
  State<ThirdHero> createState() => _ThirdHeroState();
}

class _ThirdHeroState extends State<ThirdHero> {
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
                      tag: "2sttag",
                      child: Icon(
                        Icons.two_k,
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
