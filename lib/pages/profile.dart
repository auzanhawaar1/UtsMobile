import 'package:coba_posttest5/pages/auth/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: 'Tommy',
                color: Color.fromARGB(255, 249, 217, 72)
              ),
        ),
        backgroundColor: Color.fromARGB(255, 60, 72, 107),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: screenHeight * 0.04),
              CircleAvatar(
                radius: screenWidth * 0.2,
                backgroundImage: AssetImage('assets/profil.jpeg'),
              ),
              SizedBox(height: screenHeight * 0.03),
              Text(
                'Kelompok 4',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Robaga',
                    ),
              ),
              Text(
                'kelompok4@gmail.com',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Robaga',
                    ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Card(
                child: ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Edit Profile'),
                  onTap: () {
                    Navigator.pushNamed(context, '/edit');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.account_balance_wallet),
                  title: Text('My Wallet'),
                  onTap: () {
                    Navigator.pushNamed(context, '/recentTransaction');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.translate),
                  title: Text('Change Language'),
                  onTap: () {
                    // Add translate logic here
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Rate Motics App'),
                  onTap: () {
                    // Add rate logic here
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help Center'),
                  onTap: () {
                    // Add help logic here
                  },
                ),
              ),
                Card(
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPageT(),
                  ),
                );
              },
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
