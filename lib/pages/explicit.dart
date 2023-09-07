import 'package:flutter/material.dart';

class ExplicitAnim extends StatefulWidget {
  const ExplicitAnim({super.key});

  @override
  State<ExplicitAnim> createState() => _ExplicitAnimState();
}

class _ExplicitAnimState extends State<ExplicitAnim>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  var color = Colors.blue;
  double? height = 300;
  double? width = 300;
  // bool sele = false;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 750));
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print(_controller);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explicit Animation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) => Transform.scale(
                scale: _controller.value,
                child: Container(
                  color: color,
                  height: height,
                  width: width,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) => Transform.rotate(
                angle: _controller.value + 10.0,
                child: Container(
                  color: color,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            right: _controller.value,
            child: RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
              child: Container(
                color: color,
                height: 100,
                width: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _controller.reverse();
                  },
                  child: Icon(Icons.arrow_left)),
              ElevatedButton(
                  onPressed: () {
                    _controller.stop();
                  },
                  child: Icon(Icons.pause)),
              ElevatedButton(
                  onPressed: () {
                    _controller.forward();
                  },
                  child: Icon(Icons.arrow_right)),
            ],
          ),
        ],
      ),
    );
  }
}
