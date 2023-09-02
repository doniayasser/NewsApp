import 'package:flutter/cupertino.dart';

class TextAnimation extends StatelessWidget {
  const TextAnimation({
    super.key,
    required this.textAnimation,
  });

  final Animation<Offset> textAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: textAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: textAnimation,
          child:  const Text(
            "Read the news.",
            style: TextStyle(
              color: Color(0xffEF3753),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}


