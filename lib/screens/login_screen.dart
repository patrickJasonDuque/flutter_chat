import 'package:flutter/material.dart';

import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              style: Theme.of(context).textTheme.bodyText1,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Email',
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: _showPass,
              style: Theme.of(context).textTheme.bodyText1,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _showPass = !_showPass;
                    });
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Password.',
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 1.0),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Theme.of(context).accentColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30.0),
                ),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    //Implement login functionality.
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .popAndPushNamed(RegisterScreen.routeName);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                ),
                Text('instead.', style: Theme.of(context).textTheme.button)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
