import 'package:flutter/material.dart';
import 'Colors.dart';
import 'Home.dart';
import 'Login.dart';
import 'Register.dart';

void main() {
  runApp(PerpusApp());
}

class PerpusApp extends StatelessWidget {
  const PerpusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wellcome TO E-Perpus',
      home: getStarted(),
      routes: {
        '/Home': (context) => homeApp(),
        '/Login': (context) => loginApp(),
        '/Register': (context) => registerApp(),
        '/Start': (context) => getStarted(),
      },
    );
  }
}

class getStarted extends StatelessWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/homeIlustration.png'),
            Container(height: 57),
            Text(
              'Perpustakaan Digital',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            SizedBox(
              width: 360,
              child: Text(
                'E-Perpus adalah aplikasi perpustakaan digital yang menyewakan buku berbasis mobile.',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 18,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(height: 60),
            SizedBox(
              height: 60,
              width: 247,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Login');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) {
                      if (states.contains(MaterialState.pressed)) {
                        return secondaryColor;
                      }
                      return primaryColor;
                    },
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
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
