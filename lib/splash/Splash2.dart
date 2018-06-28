import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedLogo extends AnimatedWidget {
  // The Tweens are static because they don't change.
  static final _opacityTween = new Tween<double>(begin: 0.0, end: 1.0);

  static final _sizeTween = new Tween<double>(begin: 100.0, end: 300.0);

  AnimatedLogo({Animation<double> animation}) : super(listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return new Material(
      child: new Container(
        color: Colors.deepOrange,
        child: new Stack(
          alignment: new Alignment(00.00, 00.00),
          children: <Widget>[
            new Opacity(
              opacity: _opacityTween.evaluate(animation),
              child: new Container(
                height: _sizeTween.evaluate(animation),
                width: _sizeTween.evaluate(animation),
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.indigoAccent,
                  border: new Border.all(
                    color: Colors.indigo,
                  ),
                ),
                padding: const EdgeInsets.all(32.0),
                child: new Container(
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: new Border.all(
                      color: Colors.blue,
                    ),
                  ),
                  padding: const EdgeInsets.all(32.0),
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              child: CircleAvatar(
                radius: 84.0,
                backgroundColor: Colors.cyan.shade500,
                child: FlutterLogo(
                  size: 120.0,
                  colors: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Splash2 extends StatefulWidget {
  _LogoAppState createState() => new _LogoAppState();
}

class _LogoAppState extends State<Splash2> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = new AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    animation = new CurvedAnimation(
      parent: controller,
      curve: Curves.ease,
    );

    controller.forward();
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.repeat();
      } else if (status == AnimationStatus.dismissed) {
        controller.dispose();
      }
    });
    Timer(Duration(seconds: 5), () => Navigator.pop(context));
  }

  Widget build(BuildContext context) {
    return new AnimatedLogo(animation: animation);
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}
