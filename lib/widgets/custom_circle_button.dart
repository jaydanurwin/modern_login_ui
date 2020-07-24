import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  CustomCircleButton({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Theme.of(context).primaryColor,
      splashColor: Theme.of(context).primaryColor,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 32,
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      padding: EdgeInsets.all(16.0),
      shape: const CircleBorder(),
    );
  }
}
