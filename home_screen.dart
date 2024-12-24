import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotel Hermes Palace'),
        backgroundColor: const Color.fromARGB(255, 14, 14, 14),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Menambahkan gambar
            Image.asset(
              'assets/images/arabia.jpeg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            // Menambahkan teks
            const Text(
              'Welcome to Hotel arabia!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Menambahkan tombol
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman pemesanan
                Navigator.pushNamed(context, '/room_booking');
              },
              child: const Text('Pesan Kamar'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman kontak
                Navigator.pushNamed(context, '/contact');
              },
              child: const Text('Hubungi Kami'),
            ),
          ],
        ),
      ),
    );
  }
}
