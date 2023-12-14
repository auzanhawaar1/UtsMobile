import 'package:flutter/material.dart';

class AnimePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anime Category'),
      ),
      body: Center(
        child: Text('Anime Content'),
      ),
    );
  }
}

class DramaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drama Category'),
      ),
      body: Center(
        child: Text('Drama Content'),
      ),
    );
  }
}

class EnglishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Category'),
      ),
      body: Center(
        child: Text('English Content'),
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  TextEditingController _searchController = TextEditingController();

  void _onItemTapped(int index) {
    if (index == 0) {
      // Navigasi ke halaman utama
    } else if (index == 1) {
      Navigator.pushNamed(context, '/mytickets');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/about');
    }

    setState(() {
      _currentPage = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Motics',
          style: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontFamily: 'Tommy',
                color: Color.fromARGB(255, 249, 217, 73),
              ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 60, 72, 107),
      ),
      body: ListView(
        children: [
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {},
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 8),
                    Text(
                      'Samarinda',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.4,
                  margin: EdgeInsets.only(bottom: 5),
                  child: Image.asset(
                    'assets/iklan.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 7),
                  child: Center(
                    child: Text(
                      'Now Playing',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset(
                        'assets/poster1.jpg',
                        width: 100,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 8),
                      Image.asset(
                        'assets/poster2.jpg',
                        width: 100,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 8),
                      Image.asset(
                        'assets/poster1.jpg',
                        width: 100,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 8),
                      Image.asset(
                        'assets/avengers.jpeg',
                        width: 100,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 8),
                      Image.asset(
                        'assets/drama.jpeg',
                        width: 100,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 7),
                  child: Center(
                    child: Text(
                      'Movie Category',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 150,
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: [
                      _buildIconBox(
                        "assets/showman.jpeg",
                        () {
                          Navigator.pushNamed(context, '/description');
                        },
                      ),
                      _buildIconBox(
                        "assets/drama.jpeg",
                        () {
                          Navigator.pushNamed(context, '/description');
                        },
                      ),
                      _buildIconBox(
                        "assets/english.jpeg",
                        () {
                          Navigator.pushNamed(context, '/description');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: Color.fromARGB(255, 249, 217, 73),
        unselectedItemColor: Color.fromARGB(255, 60, 72, 107),
        onTap: _onItemTapped,
        currentIndex: _currentPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movies"),
          BottomNavigationBarItem(
              icon: Icon(Icons.theaters_rounded), label: "My Tickets"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

Widget _buildIconBox(String imagePath, Function() onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.scaleDown,
        ),
      ),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      
    },
  ));
}
