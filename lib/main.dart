import 'package:flutter/material.dart';
import './screens/welcome_screen.dart';
import './screens/register_screen.dart';
import './screens/login_screen.dart';
import './screens/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      theme: ThemeData(
        fontFamily: 'Dosis',
        primarySwatch: Colors.indigo,
        // accentColor: Color.fromRGBO(146, 188, 234, 1),
        accentColor: Colors.orangeAccent[400],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          button: TextStyle(
            color: Colors.white,
            fontFamily: 'Dosis',
            fontSize: 20,
          ),
          bodyText1: TextStyle(
            color: Colors.black87,
            fontFamily: 'Dosis',
            fontSize: 18,
          ),
        ),
      ),
      home: WelcomeScreen(),
      routes: {
        ChatScreen.routeName: (ctx) => ChatScreen(),
        RegisterScreen.routeName: (ctx) => RegisterScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        WelcomeScreen.routeName: (ctx) => WelcomeScreen(),
      },
    );
  }
}
