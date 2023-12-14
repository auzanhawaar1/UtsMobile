import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            SizedBox(height: 10),
            Text(
              'New Experience',
              style: Theme.of(context).textTheme.headline4!.copyWith(),
            ),
            Text(
              'Watching New Movie much easier than any before',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Get Start',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Tommy',
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
