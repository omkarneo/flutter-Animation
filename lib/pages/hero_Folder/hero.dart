import 'package:animations/pages/hero_Folder/secondhero.dart';
import 'package:animations/pages/hero_Folder/thirdhero.dart';
import 'package:flutter/material.dart';

class HeroAni extends StatefulWidget {
  const HeroAni({super.key});

  @override
  State<HeroAni> createState() => _HeroAniState();
}

class _HeroAniState extends State<HeroAni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation")),
      body: Row(
        children: [
          InkWell(
            child: const Hero(
              tag: "1sttag",
              child: Icon(
                Icons.one_k,
                size: 100,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondHero(),
                  ));
            },
          ),
          InkWell(
            child: const Hero(
              tag: "2sttag",
              child: Icon(
                Icons.two_k,
                size: 100,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdHero(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
