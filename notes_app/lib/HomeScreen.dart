import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  final List<String> images = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: handleSearch,
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: handleSettings,
          ),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0, // Set the height of the carousel
              initialPage: 0, // Set the initial page
              enableInfiniteScroll: true, // Allow infinite scrolling
              autoPlay: true, // Enable auto-play
              autoPlayInterval: Duration(seconds: 3), // Set auto-play interval
            ),
            items: [
              // Add your carousel items here
              // Example:
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text('Carousel Item 1'),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text('Carousel Item 2'),
                ),
              ),
              Container(
                color: Colors.orange,
                child: Center(
                  child: Text('Carousel Item 3'),
                ),
              ),
            ],
          ),
          // ---------------------------------------------------------------------------------------------------
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0, // Set the height of the carousel
              initialPage: 0, // Set the initial page
              enableInfiniteScroll: true, // Allow infinite scrolling
              autoPlay: true, // Enable auto-play
              autoPlayInterval: Duration(seconds: 3), // Set auto-play interval
            ),
          items: images.map((String imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0), // Optional: Add a border-radius
                    ),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover, // Adjust how the image is displayed
                    ),
                  );
                },
              );
            }).toList(),
          ),




          // --------------------------------------------------------------------------------------------
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: Text('Go to Second Screen'),
          ),
        CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Change the color
          strokeWidth: 6.0, // Change the stroke width
         ),
         SizedBox(
            width: 200.0, // Set the desired width here
            child: LinearProgressIndicator(),
          ),
        
        ],
      ),
    );
  }

  void handleSearch() {
    // Replace this with your search functionality
    Fluttertoast.showToast(
        msg: 'This is search',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow);
  }

  void handleSettings() {
    // Replace this with your settings functionality
    Fluttertoast.showToast(
        msg: 'This is settings',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.yellow);
  }
}
