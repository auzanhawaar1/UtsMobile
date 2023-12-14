import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Wallet'),
        backgroundColor: Color.fromARGB(255, 60, 72, 107),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_balance_wallet,
              size: 150,
              color: Color.fromARGB(255, 60, 72, 107),
            ),
            SizedBox(height: 16),
            Text(
              'Wallet is Ready!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'You have successfully funded your wallet.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/recentTransaction');
              },
              style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 60, 72, 107),
                    onPrimary: Colors.white,
                  ),
              child: Text('My Wallet'),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                'Back To Home ',
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Up'),
        backgroundColor: Color.fromARGB(255, 60, 72, 107),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(
              'Amount',
              style: TextStyle(
       
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ), 
            TextField(
              decoration: InputDecoration(
                hintText: 'IDR',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
              },
            ),
            SizedBox(height: 20),
            Text(
              'Choose by Template',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 6.0,
              mainAxisSpacing: 6.0,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                OptionTile(
                  title: 'IDR',
                  subtitle: '50,000',
                  onTap: () {

                  },
                  tileColor: Color(0xFF3C486B), 
                  textColor: Colors.white, 
                ),
                OptionTile(
                  title: 'IDR',
                  subtitle: '100,000',
                  onTap: () {
                     },
                  tileColor: Color(0xFF3C486B), 
                  textColor: Colors.white, 
                ),
                OptionTile(
                  title: 'IDR',
                  subtitle: '150,000',
                  onTap: () {
                  },
                  tileColor: Color(0xFF3C486B), 
                  textColor: Colors.white, 
                ),
                OptionTile(
                  title: 'IDR',
                  subtitle: '200,000',
                  onTap: () {
                  },
                  tileColor: Color(0xFF3C486B), 
                  textColor: Colors.white, 
                ),
                OptionTile(
                  title: 'IDR',
                  subtitle: '250,000',
                  onTap: () {
                  },
                  tileColor: Color(0xFF3C486B), 
                  textColor: Colors.white, 
                ),
                OptionTile(
                  title: 'IDR',
                  subtitle: '300,000',
                  onTap: () {
                  },
                  tileColor: Color(0xFF3C486B), 
                  textColor: Colors.white, 
                ),
              ],
            ),
            SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WalletPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 60, 72, 107),
                    onPrimary: Colors.white,
                  ),
                  child: Text('Top Up Wallet'),
                ),
              ),
          ],
        ),
      ),
    ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color tileColor;
  final Color textColor;

  OptionTile({
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.tileColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: tileColor,
      elevation: 1.0,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: textColor),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: textColor),
        ),
        onTap: onTap,
      ),
    );
  }
}