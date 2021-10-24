import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app_ui/Screens/login_screen.dart';
import 'package:chat_app_ui/Screens/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? logoController;
  Animation? logoAnimation;
  @override
  void initState() {
    super.initState();
    logoController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    logoAnimation =
        ColorTween(begin: Colors.lightBlueAccent.shade400, end: Colors.white)
            .animate(logoController!);
    logoController!.forward();
    logoController!.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    logoController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'appLogo',
                      child: SizedBox(
                          child: Image.asset('images/logo.png'),
                          height: logoController!.value * 100),
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('Instant Chat',
                              speed: const Duration(milliseconds: 200))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Material(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogIn(),
                        ),
                      );
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 20,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Material(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
