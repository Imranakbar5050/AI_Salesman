import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ist_project/AppScreens/Filter_screen.dart';
import 'package:ist_project/AppScreens/Home_screen.dart';
import 'package:ist_project/utils/appimages.dart';

class All_Categories extends StatefulWidget {
  const All_Categories({super.key});

  @override
  State<All_Categories> createState() => _All_CategoriesState();
}

class _All_CategoriesState extends State<All_Categories> {
  String _selectedCategory = 'All'; // Tracks the selected category
  bool _isExpanded = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5),
              child: Row(
                children: [
                  const Text(
                    'All Categories ',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.highlight_remove, size: 30),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home_screen()),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  _buildCategoryItem('All'),
                  const SizedBox(width: 30),
                  _buildCategoryItem('Female'),
                  const SizedBox(width: 30),
                  _buildCategoryItem('Male'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = !_isExpanded; // Toggle expansion state
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage(AppImages.home_screen_image1), // Ensure path is correct in AppImages
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Clothing',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          Icon(
                            _isExpanded
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded) // Conditionally show items when expanded
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              _buildCategoryWithBorder('Dresses'),
                              SizedBox(width: 60),
                              _buildCategoryWithBorder('Shirts'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('Pants'),
                              SizedBox(width: 70),
                              _buildCategoryWithBorder('Jackets'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('T-Shirts'),
                              SizedBox(width: 70),
                              _buildCategoryWithBorder('Polo'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('Hoodies'),
                              SizedBox(width: 50),
                              _buildCategoryWithBorder('Shorts'),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded2 = !_isExpanded2; // Toggle expansion state
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage(AppImages.home_screen_image2), // Ensure path is correct in AppImages
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Shoes',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          Icon(
                            _isExpanded2
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded2) // Conditionally show items when expanded
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              _buildCategoryWithBorder('Dresses'),
                              SizedBox(width: 60),
                              _buildCategoryWithBorder('Shirts'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('Pants'),
                              SizedBox(width: 70),
                              _buildCategoryWithBorder('Jackets'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('T-Shirts'),
                              SizedBox(width: 70),
                              _buildCategoryWithBorder('Polo'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('Hoodies'),
                              SizedBox(width: 50),
                              _buildCategoryWithBorder('Shorts'),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded3 = !_isExpanded3; // Toggle expansion state
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage(AppImages.home_screen_image3), // Ensure path is correct in AppImages
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Accessories',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          Icon(
                            _isExpanded3
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded3) // Conditionally show items when expanded
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              _buildCategoryWithBorder('Dresses'),
                              SizedBox(width: 60),
                              _buildCategoryWithBorder('Shirts'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('Pants'),
                              SizedBox(width: 70),
                              _buildCategoryWithBorder('Jackets'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('T-Shirts'),
                              SizedBox(width: 70),
                              _buildCategoryWithBorder('Polo'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('Hoodies'),
                              SizedBox(width: 50),
                              _buildCategoryWithBorder('Shorts'),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded4 = !_isExpanded4; // Toggle expansion state
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image(
                              image: AssetImage(AppImages.home_screen_image2), // Ensure path is correct in AppImages
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Long shoes',
                            style: TextStyle(fontSize: 20),
                          ),
                          const Spacer(),
                          Icon(
                            _isExpanded4
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isExpanded4) // Conditionally show items when expanded
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              _buildCategoryWithBorder('Dresses'),
                              SizedBox(width: 60),
                              _buildCategoryWithBorder('Shirts'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('Pants'),
                              SizedBox(width: 70),
                              _buildCategoryWithBorder('Jackets'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('T-Shirts'),
                              SizedBox(width: 70),
                              _buildCategoryWithBorder('Polo'),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              _buildCategoryWithBorder('Hoodies'),
                              SizedBox(width: 50),
                              _buildCategoryWithBorder('Shorts'),
                            ],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage(AppImages.home_screen_image1), // Ensure path is correct in AppImages
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Just for You',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(width: 100,),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_outlined, size: 30),
                          color: Colors.red,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Filter_screen()),
                            );
                          },
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),

        
          ],
        ),
      ),
    );
  }

  // Category item widget
  Widget _buildCategoryItem(String category) {
    final isSelected = _selectedCategory == category;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = category; // Update selected category
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? Colors.redAccent : const Color(0xFFE5EBFC),
          border: Border.all(
            color: isSelected ? Colors.redAccent : const Color(0xFFE5EBFC),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          category,
          style: TextStyle(
            fontSize: 20,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
  Widget _buildCategoryWithBorder(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1), // Border color and width
        borderRadius: BorderRadius.circular(10), // Optional: Round the corners
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
