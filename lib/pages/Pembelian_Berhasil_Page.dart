import 'package:coba_posttest5/pages/home_page.dart';
import 'package:coba_posttest5/pages/my_tickets.dart';
import 'package:flutter/material.dart';

class PembelianBerhasilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "../assets/showman.jpeg",
                  height: 300.0,
                  width: 300.0,
                ),
                SizedBox(height: 20.0),

                Text(
                  'Happy Watching!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 10.0),

                Text(
                  'You have successfully\nbought the ticket',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 70.0),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mytickets()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    primary: const Color.fromARGB(255, 60, 72, 107),
                    minimumSize: Size(230.0, 50.0),
                  ),
                  child: Text(
                    'My Tickets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0, 
                    ),
                  ),
                ),
                SizedBox(height: 20.0),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    'Back To Home',
                    style: TextStyle( 
                      decoration: TextDecoration.underline,
                      fontSize: 18.0, 
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
