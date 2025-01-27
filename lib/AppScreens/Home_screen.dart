import 'package:flutter/material.dart';
import 'package:ist_project/AppScreens/ChatScreens/ChatScreen.dart';
import 'package:ist_project/AppScreens/Components/All_Categories.dart';
import 'package:ist_project/AppScreens/FavouriteScreen.dart';
import 'package:ist_project/AppScreens/Full_profile_screen.dart';
import 'package:ist_project/Profile/PersonProfile.dart';
import 'package:ist_project/utils/appimages.dart';

import 'CartScreen.dart';

class Home_screen extends StatefulWidget {
  final ImageProvider<Object>? previousImage;

  const Home_screen({Key? key, this.previousImage}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int _selectedIndex = 0;
  int selectedStars = 0;

// Method to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FavouriteScreen(),
          ),
        );
      }
      if (index == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartScreen(),
          ),
        );
      }
      if (index == 4) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PersonProfile(),
          ),
        );
      }
      if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatScreen(),
          ),
        );
      }

    });
  }

  // Index for tracking selected tab in the Bottom Navigation Bar
  final List<Map<String, dynamic>> items = [
    {
      "image": AppImages.home_screen_image1,
      "text": "Classic Comfort Tee",
      "price": "\$29.99"
    },
    {
      "image": AppImages.home_screen_image2,
      "text": "Modern Slim Shirt",
      "price": "\$39.99"
    },
    {
      "image": AppImages.home_screen_image3,
      "text": "Casual Fit Jeans",
      "price": "\$49.99"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Circular Avatar with previous image
                  CircleAvatar(
                    radius: 20,
                    child:
                        Image(image: AssetImage(AppImages.home_screen_image1)),
                  ),

                  // "My Activity" text
                  Container(
                    padding:
                        const EdgeInsets.all(8.0), // Padding inside the border
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'My Activity',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),

                  // Row of 3 icons
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.notifications),
                        color: Colors.black,
                        onPressed: () {
                          // Add functionality for notifications
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.settings),
                        color: Colors.black,
                        onPressed: () {
                          // Add functionality for settings
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.filter_alt_sharp),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => All_Categories()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Hello, Anique!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                'Announcement',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Elevate your everyday wardrobe with our Classic Comfort Tee',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(
                        8.0), // Adds space between the border and icon
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red, // Background color of the circle
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Colors.white, // Icon color
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text('My Orders',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFFE5EBFC),
                      border: Border.all(color: Color(0xFFE5EBFC), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Text(
                      'To Pay',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFFE5EBFC),
                      border: Border.all(color: Color(0xFFE5EBFC), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Text(
                      'To Receive',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Review'),
                            content: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        backgroundImage: AssetImage(AppImages.home_screen_image4), // Replace with actual image path
                                        radius: 20,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: const Text(
                                          'Lorem ipsum dolor sit amet consectetur.\nOrder #92287157',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      5,
                                          (index) => const Icon(Icons.star_border, color: Colors.yellow, size: 30),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Your comment',
                                      filled: true,
                                      fillColor: Colors.blue[50],
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context); // Close the current dialog
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor: Colors.red,
                                                  radius: 30,
                                                  child: Icon(Icons.check, color: Colors.white, size: 30),
                                                ),
                                                const SizedBox(height: 20),
                                                const Text(
                                                  'Done!',
                                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                                ),
                                                const SizedBox(height: 10),
                                                const Text(
                                                  'Thank you for your review',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(fontSize: 16),
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: List.generate(
                                                    5,
                                                        (index) => const Icon(Icons.star, color: Colors.yellow, size: 30),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                                    child: const Text('Say it!'),
                                  ),

                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5EBFC),
                        border: Border.all(color: const Color(0xFFE5EBFC), width: 1),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text(
                        'To Review',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 30),
              Text('New Arrivals',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: items.map((item) {
                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Navigate to Full_profile_screen with image, text, and price
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Full_profile_screen(
                                  imagepath: item["image"],
                                  text: item["text"],
                                  price: item["price"],
                                ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                item["image"],
                                fit: BoxFit.cover,
                                height: 170,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                item["text"],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                item["price"],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Highlight selected tab
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.red.withOpacity(0.6),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_sharp),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}

