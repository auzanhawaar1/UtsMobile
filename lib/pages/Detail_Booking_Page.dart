import 'package:coba_posttest5/pages/Pembelian_Berhasil_Page.dart';
import 'package:coba_posttest5/pages/wallet.dart';
import 'package:flutter/material.dart';

class DetailBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Booking'),
        backgroundColor: Color.fromARGB(255, 60, 72, 107),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Check details below before checkout',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Image.asset(
                  'assets/showman.jpeg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Greatest Showman',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Musical - English',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 24,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 24,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 24,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 24,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 24,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 8),
                          Text(
                            '7.5 / 10',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ID Order',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '122133435363',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cinema',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'XXI Big Mall',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date & Time',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Mon 01, 11:00 AM',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '3 Tickets',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'E4, E5, E6',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Seat',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Rp. 35.000,00 x 3',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fees',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Rp. 5.000,00 x 3',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Rp. 120.000,00',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Saldo E-Wallet',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Rp. 200.000,00',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PembelianBerhasilPage()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 60, 72, 107)),
                  ),
                  child: Text('Check Out Now'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TopUp()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 60, 72, 107)),
                  ),
                  child: Text('Top Up Saldo'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
