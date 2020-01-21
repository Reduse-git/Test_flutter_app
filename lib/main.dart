import 'package:flutter/widgets.dart';
import 'dart:math' as math;

main() => runApp(
      Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          child: Background(),
        ),
      ),
    );

class Background extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _App();
}

class _App extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Container(
          decoration: BoxDecoration(
            color: bgColorRandom(),
          ),
          child: Center(
            child: Text('Hey there'),
          ),
        ),
      ),
    );
  }
}

Color bgColorRandom() {
  Color bgColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
      .withOpacity(1.0);
  return bgColor;
}
