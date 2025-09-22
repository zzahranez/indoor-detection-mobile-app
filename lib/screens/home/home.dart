// home.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Text(
            "Smart Indoor",
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            "Welcome to Home Page",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(15),
            // opsional biar terlihat
            child: const Text(
              "This App has the function to identify indoor objects with your camera. open the cam from this app and ai will detect of your indoor object realtime",
            ),
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.start, // dari kiri
            children: [
              Icon(Icons.home, size: 90, color: Colors.blueGrey.shade800),
              SizedBox(width: 40), // spasi antar icon
              Icon(
                Icons.camera_alt,
                size: 90,
                color: const Color.fromARGB(255, 22, 73, 99),
              ),
              SizedBox(width: 40),
              Icon(Icons.info, size: 90, color: Colors.red),
            ],
          ),
          SizedBox(height: 10),
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: double.infinity, // full width card
              height: 200,
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                'assets/images/machine.jpg', // ganti dengan gambar kamu
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
