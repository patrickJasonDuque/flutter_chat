import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = '/register-screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _showPass = false;
  bool _showConfirmPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                    border: const OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2.0),
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
                  style: Theme.of(context).textTheme.bodyText1,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  obscureText: _showPass,
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
                    hintText: 'Password',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2.0),
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
                  obscureText: _showConfirmPass,
                  style: Theme.of(context).textTheme.bodyText1,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _showConfirmPass = !_showConfirmPass;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Confirm Password',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 1.0),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(32.0),
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2.0),
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
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () {
                        //Implement registration functionality.
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .popAndPushNamed(LoginScreen.routeName);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Theme.of(context).accentColor),
                      ),
                    ),
                    Text('instead.', style: Theme.of(context).textTheme.button)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
