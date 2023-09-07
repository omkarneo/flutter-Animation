import 'dart:ui';

import 'package:flutter/material.dart';

class Anmination1 extends StatefulWidget {
  const Anmination1({super.key});

  @override
  State<Anmination1> createState() => _Anmination1State();
}

class _Anmination1State extends State<Anmination1> {
  double height = 100;
  double width = 100;
  double radius = 0;
  int click = 0;
  Color col = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: AnimatedContainer(
                curve: Curves.linear,
                duration: Duration(milliseconds: 200),
                height: height,
                width: width,
                decoration: BoxDecoration(
                    color: col, borderRadius: BorderRadius.circular(radius)),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      TweenAnimationBuilder(
                        duration: const Duration(milliseconds: 200),
                        tween: Tween<double>(
                            begin: 100, end: MediaQuery.sizeOf(context).width),
                        child: Slider(
                          max: MediaQuery.sizeOf(context).width,
                          value: width,
                          min: 100,
                          onChanged: (value) {
                            setState(() => width = value);
                          },
                        ),
                        builder: (BuildContext context, double? value,
                            Widget? child) {
                          return ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 40 * (value ?? 0.01),
                                sigmaY: 40 * (value ?? 0.01),
                              ),
                              child: child,
                            ),
                          );
                        },
                      ),
                      TweenAnimationBuilder(
                        duration: const Duration(milliseconds: 2000),
                        tween: Tween<double>(
                            begin: 100,
                            end: MediaQuery.sizeOf(context).height - 150),
                        child: Container(
                          child: Slider(
                            max: MediaQuery.sizeOf(context).height - 150,
                            value: height,
                            min: 100,
                            onChanged: (value) {
                              print(height);
                              setState(() => height = value);
                            },
                          ),
                        ),
                        builder: (BuildContext context, double? value,
                            Widget? child) {
                          return ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 40 * (value ?? 0.01),
                                sigmaY: 40 * (value ?? 0.01),
                              ),
                              child: child,
                            ),
                          );
                        },
                      ),
                      TweenAnimationBuilder(
                        duration: const Duration(milliseconds: 2000),
                        tween: Tween<double>(begin: 0, end: 100),
                        child: Container(
                          child: Slider(
                            max: 100,
                            value: radius,
                            min: 0,
                            onChanged: (value) {
                              print(height);
                              setState(() => radius = value);
                            },
                          ),
                        ),
                        builder: (BuildContext context, double? value,
                            Widget? child) {
                          return ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 40 * (value ?? 0.01),
                                sigmaY: 40 * (value ?? 0.01),
                              ),
                              child: child,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          onPressed: () {
                            setState(() {
                              col = Colors.red;
                            });
                          },
                          child: Text('')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow),
                          onPressed: () {
                            setState(() {
                              col = Colors.yellow;
                            });
                          },
                          child: Text('')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          onPressed: () {
                            setState(() {
                              col = Colors.green;
                            });
                          },
                          child: Text('')),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
