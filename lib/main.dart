import 'package:coba_posttest5/pages/Detail_Booking_Page.dart';
import 'package:coba_posttest5/pages/Pembelian_Berhasil_Page.dart';
import 'package:coba_posttest5/pages/Recent_Transaction_page.dart';
import 'package:coba_posttest5/pages/booking_seat_page.dart';
import 'package:coba_posttest5/pages/choose_date_page.dart';
import 'package:coba_posttest5/pages/confirm_new_account_page.dart';
import 'package:coba_posttest5/pages/editprofile_page.dart';
import 'package:coba_posttest5/pages/auth/firebase_options.dart';
import 'package:coba_posttest5/pages/movie_description_page%20.dart';
import 'package:coba_posttest5/pages/my_tickets.dart';
import 'package:coba_posttest5/pages/auth/regis.dart';
import 'package:coba_posttest5/pages/select_page.dart';
import 'package:coba_posttest5/pages/ticket_booking_page.dart';
import 'package:coba_posttest5/pages/wallet.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/profile.dart';
import 'pages/introduction_page.dart';
import 'pages/auth/login_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motics',
          home: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return HomePage();
              } else {
                return LoginPageT();
              }
            },
          ),
          routes: {
            '/about': (context) => AboutPage(),
            '/introduction': (context) => IntroductionPage(),
            '/login': (context) => LoginPageT(),
            '/wallet': (context) => TopUp(),
            '/mytickets': (context) => mytickets(),
            '/home': (context) => HomePage(),
            '/berhasil': (context) => PembelianBerhasilPage(),
            '/confirm': (context) => ConfirmNewAccountPage(),
            '/recentTransaction': (context) => RecentTransaction(),
            '/select': (context) => SelectPage(),
            '/edit': (context) => EditProfileScreen(),
            '/choose': (context) => ChooseDatePage(),
            '/description': (context) => MovieDescriptionPage(),
            '/seatbooking': (context) => BookingPage(),
            '/detailbooking': (context) => DetailBookingPage(),
            '/ticket': (context) => TicketPage(),
            '/regis':(context) => Regis(),
          },
          initialRoute: '/introduction',
          debugShowCheckedModeBanner: false,
        );
      } 
    }

