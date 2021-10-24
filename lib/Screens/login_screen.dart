import 'package:chat_app_ui/Components/action_button.dart';
import 'package:chat_app_ui/Components/text_field.dart';
import 'package:chat_app_ui/Screens/home_screen.dart';
import 'package:chat_app_ui/Screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Center(
          child: Text('Log in'),
        ),
      ),
      body: GestureDetector(
        onTapDown: (_) => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.translucent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Hero(
                tag: 'appLogo',
                child: SizedBox(
                  height: 200,
                  child: Image.asset('images/logo.png'),
                ),
              ),
            ),
            const CustomTextField(
              textInputType: TextInputType.emailAddress,
              hintText: 'Enter Your Email Address',
              preIcon: Icons.email,
              topPadding: 30,
              bottomPadding: 0,
            ),
            const CustomTextField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'Type Your Password',
              preIcon: Icons.lock,
              topPadding: 30,
              bottomPadding: 10,
            ),
            const CustomActionButton(
              buttonText: 'Log in',
              topWidgetPadding: 30,
              horizontalTextPadding: 110,
              screenName: ChatsScreen(),
            ),
            const Divider(
              color: Colors.white,
              indent: 40,
              endIndent: 40,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account."),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
