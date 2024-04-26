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
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Color.fromARGB(255, 24, 23, 23)),
              ),
            ],
          ),
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.273, 
            child: Container(color: Colors.grey),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('images/profile.jpg'), 
                ),
                const SizedBox(height: 30.0),
                const Text(
                  'MARCNEL H. PANGANIBAN',
                  style: TextStyle(

                    fontFamily: 'Noto Sans',
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  
                  
                    
                    
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  'GAME DEVELOPER / WEB DEVELOPER',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(height: 40.0),
                const Text(
                  'Address:    SAN GREGORIO, LAUREL, BATANGAS',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "impact",
                 
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Phone number:    09126843236                             ',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Email:    marcnelpanganiban0808@gmail.com    ',
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    
                  ),
                ),
                const SizedBox(height: 40.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildSocialMediaItem('images/facebook-removebg-preview.png', 'Marcnel Panganiban'),
                    const SizedBox(height: 14.0),
                    
                    _buildSocialMediaItem('images/instagram-removebg-preview.png', 'marccc.hp'),
                    const SizedBox(height: 14.0),
                    _buildSocialMediaItem('images/Screenshot_2024-04-26_171230-removebg-preview.png', 'smarccc'),
                  ],
                ),
              ],
            ),
          ),
        ],
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
          style: const TextStyle(
            
            fontSize: 14.0,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ],
    );
  }
}

