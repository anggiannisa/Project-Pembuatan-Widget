import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageListScreen(),
    );
  }
}

class ImageListScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/image1.jpg', // Replace with your image paths
      'text': 'Brownies',
    },
    {
      'image': 'assets/image2.jpg',
      'text': 'Pastry',
    },
    {
      'image': 'assets/image3.jpg',
      'text': 'Birthday Cake',
    },
    {
      'image': 'assets/image4.jpg',
      'text': 'Donat',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        items[index]['image']!,
                        height: 200, // Set a height for the images
                        fit: BoxFit.cover,
                        width: double.infinity, // Ensure the image takes full width
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          items[index]['text']!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the NextScreen when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextScreen()),
              );
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Next Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}