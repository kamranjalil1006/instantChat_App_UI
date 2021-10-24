import 'package:chat_app_ui/Components/action_button.dart';
import 'package:chat_app_ui/Components/text_field.dart';
import 'package:chat_app_ui/Screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTapDown: (_) => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.translucent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                child: MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                          color: Theme.of(context).primaryColor, width: 0.5)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage('images/google.png'),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text('Sign up with Google')
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 70, left: 70, top: 5, bottom: 20),
                child: MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                          color: Theme.of(context).primaryColor, width: 0.5)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage('images/facebook.png'),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text('Sign up with Facebook')
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextField(
              textInputType: TextInputType.emailAddress,
              hintText: 'Enter Your Email Address',
              preIcon: Icons.email,
              topPadding: 30,
              bottomPadding: 10,
            ),
            const CustomTextField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'Create Password',
              preIcon: Icons.lock,
              topPadding: 10,
              bottomPadding: 10,
            ),
            const CustomTextField(
              textInputType: TextInputType.visiblePassword,
              hintText: 'Retype Your Password',
              preIcon: Icons.lock,
              topPadding: 10,
              bottomPadding: 30,
            ),
            const CustomActionButton(
              buttonText: 'Sign up with Email',
              topWidgetPadding: 0,
              horizontalTextPadding: 80,
              screenName: LogIn(),
            ),
            const Text(
              'By signing up with us, You agree to our\nTerms & Privacy Policy',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            Flexible(
              child: Column(
                children: [
                  const Divider(
                    color: Colors.white,
                    indent: 40,
                    endIndent: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an Account."),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LogIn(),
                            ),
                          );
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
