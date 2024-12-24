import 'package:flutter/material.dart';

class RoomBookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('jenis ruangan'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          RoomCard(roomType: 'vip', price: 'IDR 1000,000/night'),
          RoomCard(roomType: 'vvip', price: 'IDR 5,200,000/night'),
          RoomCard(roomType: 'ruangan keluarga', price: 'IDR 5,500,000/night'),
        ],
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  final String roomType;
  final String price;

  RoomCard({required this.roomType, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(roomType, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(price, style: TextStyle(fontSize: 16, color: Colors.grey[700])),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add booking logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Room Booked Successfully!')),
                );
              },
              child: Text('Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}