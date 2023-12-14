import 'package:coba_posttest5/pages/profile.dart';
import 'package:flutter/material.dart';
import 'custom_bottom_navigation_bar.dart';
import 'home_page.dart';

class mytickets extends StatelessWidget {
  int _currentPage = 0;

void _onItemTapped(int index, BuildContext context) {
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => mytickets()));
    } else if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AboutPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 40, 8, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Ticket',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16), 

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/ticket');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 255, 234, 0), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                0.0), 
                          ),
                        ),
                        child: Text(
                          'New',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(width: 40), 
                    Container(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 60, 72, 107), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                0.0),
                          ),
                        ),
                        child: Text(
                          'Used',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          Center(
            child: Container(
              width: MediaQuery.of(context).size.width *
                  0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          15.0), 
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        "../assets/showman.jpeg", 
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Greatest Showman',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Tuesday 19, 13:10',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'XXI Big Mall',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentPage: _currentPage,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
