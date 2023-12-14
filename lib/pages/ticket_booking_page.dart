import 'package:flutter/material.dart';

class TicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket'),
        backgroundColor: Color.fromARGB(255, 60, 72, 107),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/showman.jpeg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            // Informasi Film
            Text(
              'The Greatest Showman',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Musical - English',
              style: TextStyle(fontSize: 18),
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
            SizedBox(height: 16),
            // Informasi Tiket
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
                  'Seat',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'E4, E5, E6',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Informasi Pembayaran & Nama
                    Text(
                      'Name',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Kelompok 4',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 16),
                    // Informasi Pembayaran
                    Text(
                      'Price',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Rp. 120.000,00',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                // Gambar Barcode
                Image.asset(
                  'assets/barcode.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(height: 16),
            // Teks ID Order
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
          ],
        ),
      ),
    );
  }
}