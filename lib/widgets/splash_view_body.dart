import 'package:flutter/material.dart';
import 'package:news/widgets/text_animation.dart';
import '../views/news_view.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> textAnimation;

  @override
  void initState() {
    super.initState();
    initStateTextAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.jpg',
          ),
          const SizedBox(
            height: 16.0,
          ),
          TextAnimation(textAnimation: textAnimation),
        ],
      ),
    );
  }

  void initStateTextAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    textAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
       Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const NewsView(category: 'general'),));
      },
    );
  }
}
