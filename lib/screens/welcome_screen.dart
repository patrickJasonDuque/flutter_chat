import 'package:flutter/material.dart';

import './register_screen.dart';
import './login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = '/welcome-screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  CurvedAnimation animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    animation =
        CurvedAnimation(parent: animationController, curve: Curves.decelerate);

    animationController.forward();

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        animationController.forward();
      } else if (status == AnimationStatus.completed) {
        animationController.reverse(from: 1.0);
      }
    });

    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/images/logo.png'),
                    height: animation.value * 60.0,
                  ),
                ),
                Text(
                  'Alou Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RegisterScreen.routeName);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
