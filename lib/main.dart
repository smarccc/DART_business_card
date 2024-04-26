import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BusinessCard(),
    );
  }
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Card'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/360_F_562993122_e7pGkeY8yMfXJcRmclsoIjtOoVDDgIlh.jpg'), // Replace 'assets/profile_image.jpg' with your image asset path
            ),
            const SizedBox(height: 20.0),
            const Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Address: 123 Main St, City, Country',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Phone number: +1234567890',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Email: john.doe@example.com',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildSocialMediaItem('images/360_F_562993122_e7pGkeY8yMfXJcRmclsoIjtOoVDDgIlh.jpg', 'Facebook'),
                const SizedBox(height: 10.0),
                _buildSocialMediaItem('images/360_F_562993122_e7pGkeY8yMfXJcRmclsoIjtOoVDDgIlh.jpg', 'Instagram'),
                const SizedBox(height: 10.0),
                _buildSocialMediaItem('images/360_F_562993122_e7pGkeY8yMfXJcRmclsoIjtOoVDDgIlh.jpg', 'GitHub'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialMediaItem(String imagePath, String name) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 30,
          height: 30,
        ),
        const SizedBox(height: 5.0),
        Text(
          name,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
