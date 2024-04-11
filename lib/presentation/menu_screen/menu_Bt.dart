import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class mene_bt extends StatelessWidget {
  const mene_bt({Key? key, required this.press, required this.riveOnInit})
      : super(key: key);
  final VoidCallback press;
  final ValueChanged<Artboard> riveOnInit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: press,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 20),
              height: 45,
              width: 45,
              child: RiveAnimation.asset(
                "assets/Icons/menu_button (1).riv",
                onInit: riveOnInit,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
