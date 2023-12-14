import 'package:coba_posttest5/pages/Detail_Booking_Page.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  List<bool> seatStatus = List.generate(30, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Kursi Anda'),
        backgroundColor: Color.fromARGB(255, 60, 72, 107),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Layar Bioskop',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Wrap(
              alignment: WrapAlignment.center,
              children: List.generate(30, (index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seatStatus[index] = !seatStatus[index];
                      });
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: seatStatus[index] ? Colors.yellow : Color.fromARGB(255, 60, 72, 107),
                          width: 2.0,
                        ),
                        color: seatStatus[index] ? Colors.yellow : Color.fromARGB(255, 60, 72, 107),
                      ),
                      child: Center(
                        child: Text(
                          (index + 1).toString(),
                          style: TextStyle(
                            color: seatStatus[index] ? Colors.white : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                List<int> selectedSeats = [];
                for (int i = 0; i < seatStatus.length; i++) {
                  if (seatStatus[i]) {
                    selectedSeats.add(i + 1);
                  }
                }
                if (selectedSeats.isNotEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Kursi Terpilih'),
                        content: Text('Anda telah memilih kursi: ${selectedSeats.join(", ")}'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              // Navigate to the next page when the "OK" button is pressed
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailBookingPage(),
                                ),
                              );
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Peringatan'),
                        content: Text('Silakan pilih kursi terlebih dahulu.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 60, 72, 107)),
                fixedSize: MaterialStateProperty.all(Size(200, 50)),
              ),
              child: Text('Pesan Kursi'),
            ),
          ],
        ),
      ),
    );
  }
}
