import 'package:flutter/material.dart';

class ChooseDatePage extends StatefulWidget {
  @override
  _ChooseDatePageState createState() => _ChooseDatePageState();
}

class _ChooseDatePageState extends State<ChooseDatePage> {
  String selectedDate = '';
  String selectedTime = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text(
                  'Choose Date',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                DateBox(
                  date: '01',
                  day: 'Mon',
                  onPressed: () => _handleDateTap('01'),
                  isSelected: selectedDate == '01',
                ),
                DateBox(
                  date: '02',
                  day: 'Tue',
                  onPressed: () => _handleDateTap('02'),
                  isSelected: selectedDate == '02',
                ),
                DateBox(
                  date: '03',
                  day: 'Wed',
                  onPressed: () => _handleDateTap('03'),
                  isSelected: selectedDate == '03',
                ),
                DateBox(
                  date: '04',
                  day: 'Thu',
                  onPressed: () => _handleDateTap('04'),
                  isSelected: selectedDate == '04',
                ),
              ],
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Where to Watch',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'CGV Plaza Mulia',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Text(
                  'Harga : Rp 35.000',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                TimeBox(
                  time: '10:15 AM',
                  onPressed: () => _handleTimeTap('10:15 AM'),
                  isSelected: selectedTime == '10:15 AM',
                ),
                TimeBox(
                  time: '11:00 AM',
                  onPressed: () => _handleTimeTap('11:00 AM'),
                  isSelected: selectedTime == '11:00 AM',
                ),
                TimeBox(
                  time: '13:00 PM',
                  onPressed: () => _handleTimeTap('13:00 PM'),
                  isSelected: selectedTime == '13:00 PM',
                ),
                TimeBox(
                  time: '15:00 PM',
                  onPressed: () => _handleTimeTap('15:00 PM'),
                  isSelected: selectedTime == '15:00 PM',
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.yellow,
                ),
                SizedBox(width: 8),
                Text(
                  'Big Mall',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Text(
              'Harga : Rp 50.000',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                TimeBox(
                  time: '10:00 PM',
                  onPressed: () => _handleTimeTap('10:00 PM'),
                  isSelected: selectedTime == '10:00 PM',
                ),
                TimeBox(
                  time: '13:10 PM',
                  onPressed: () => _handleTimeTap('13:10 PM'),
                  isSelected: selectedTime == '13:10 PM',
                ),
                TimeBox(
                  time: '14:30 PM',
                  onPressed: () => _handleTimeTap('14:30 PM'),
                  isSelected: selectedTime == '14:30 PM',
                ),
                TimeBox(
                  time: '15:50 PM',
                  onPressed: () => _handleTimeTap('15:50 PM'),
                  isSelected: selectedTime == '15:50 PM',
                ),
              ],
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/seatbooking');
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 60, 72, 107)),
                ),
                child: Text('Select Your Seat'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleDateTap(String date) {
    setState(() {
      selectedDate = date;
    });
    print('Selected Date: $selectedDate');
  }

  void _handleTimeTap(String time) {
    setState(() {
      selectedTime = time;
    });
    print('Selected Time: $selectedTime');
  }
}

class DateBox extends StatelessWidget {
  final String date;
  final String day;
  final VoidCallback? onPressed;
  final bool isSelected;

  DateBox({
    required this.date,
    required this.day,
    this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(9.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: isSelected ? Colors.yellow : Color.fromARGB(255, 60, 72, 107),
          ),
          child: Column(
            children: [
              Text(
                date,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                day,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeBox extends StatelessWidget {
  final String time;
  final VoidCallback? onPressed;
  final bool isSelected;

  TimeBox({
    required this.time,
    this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.all(6.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: isSelected ? Colors.yellow : Color.fromARGB(255, 60, 72, 107),
          ),
          child: Text(
            time,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
