import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../core/classes/classes.dart';

class SplashController extends StatefulWidget {
  const SplashController({Key? key}) : super(key: key);

  @override
  State<SplashController> createState() => _SplashControllerState();
}

class _SplashControllerState extends State<SplashController> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(
        const Duration(seconds: 8),
        () => Nav.to(context, '/'),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            FadeAnimatedText(
              'Grow Your Business',
              textStyle:
                  const TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            ScaleAnimatedText(
              'With',
              textStyle:
                  const TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
            ),
            RotateAnimatedText(
              'LEADS BOOK',
              textStyle:
                  const TextStyle(fontSize: 50.0, fontFamily: 'Canterbury'),
            ),
          ],
        ),
      )),
    );
  }
}
