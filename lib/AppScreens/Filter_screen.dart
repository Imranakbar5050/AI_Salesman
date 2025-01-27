import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ist_project/AppScreens/CartScreen.dart';
import 'package:ist_project/utils/appimages.dart';

import 'Home_screen.dart';

class Filter_screen extends StatefulWidget {
  const Filter_screen({super.key});

  @override
  State<Filter_screen> createState() => _Filter_screenState();
}

class _Filter_screenState extends State<Filter_screen> {
  String _selectedSort = 'Popular'; // Default selected option

  final List<String> _options = [
    'Popular',
    'Newest',
    'Price High to Low',
    'Price Low to High'
  ];
  RangeValues _currentRangeValues = const RangeValues(0, 200);
  String? _selectedSize;
  Color? _selectedColor;
  String _selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: Row(
          children: [
            const Text(
              'Filter  ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.highlight_remove, size: 30),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home_screen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 30, // Adjust the size of the circle
                  backgroundImage: AssetImage(AppImages.home_screen_image3),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Bags')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30, // Adjust the size of the circle
                  backgroundImage: AssetImage(AppImages.home_screen_image4),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Shoes')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30, // Adjust the size of the circle
                  backgroundImage: AssetImage(AppImages.home_screen_image1),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Hoodies')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30, // Adjust the size of the circle
                  backgroundImage: AssetImage(AppImages.home_screen_image2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('jackets')
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                  radius: 30, // Adjust the size of the circle
                  backgroundImage: AssetImage(
                    AppImages.home_screen_image4,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('long Shoes')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30, // Adjust the size of the circle
                  backgroundImage: AssetImage(AppImages.home_screen_image1),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Shirts')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30, // Adjust the size of the circle
                  backgroundImage: AssetImage(AppImages.home_screen_image2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('T-Shirts')
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              children: [
                CircleAvatar(
                  radius: 30, // Adjust the size of the circle
                  backgroundImage: AssetImage(AppImages.home_screen_image3),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Sandels')
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Text(
                'Size',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 120),
              // Clothes Text with Border
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedCategory = 'Clothes'; // Update selected category
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4), // Padding inside the container
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _selectedCategory == 'Clothes'
                          ? Colors.red
                          : Colors.black, // Red if selected, black otherwise
                      width: 1,
                    ),
                    borderRadius:
                        BorderRadius.circular(5), // Optional: Rounded corners
                  ),
                  child: Text(
                    'Clothes',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(width: 20),
              // Shoes Text with Border
              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedCategory = 'Shoes'; // Update selected category
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4), // Padding inside the container
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _selectedCategory == 'Shoes'
                          ? Colors.red
                          : Colors.black, // Red if selected, black otherwise
                      width: 1,
                    ),
                    borderRadius:
                        BorderRadius.circular(5), // Optional: Rounded corners
                  ),
                  child: Text(
                    'Shoes',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Wrap(
            spacing: 10, // Horizontal spacing between size options
            runSpacing: 10, // Vertical spacing if wrapped
            children: ['XS', 'S', 'M', 'L', 'XL', '2XL'].map((size) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedSize = size; // Update the selected size
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _selectedSize == size
                          ? Colors.red
                          : Colors.black, // Red if selected
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: _selectedSize == size
                        ? Colors.red.withOpacity(0.1)
                        : Colors.white, // Optional background
                  ),
                  child: Text(
                    size,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: _selectedSize == size
                          ? Colors.red
                          : Colors.black, // Text color changes if selected
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Color',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Define different colors
              ...[
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellow,
                Colors.orange,
                Colors.purple
              ].map((color) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColor = color; // Update selected color
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: color, // Set color
                      shape: BoxShape.circle, // Circular container
                      border: Border.all(
                        color: _selectedColor == color
                            ? Colors.black
                            : Colors.transparent, // Highlight selected color
                        width: 3,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'Price',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 110,
              ),
              Text(
                'RS 100 - RS 200',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 200,
            divisions: 14,
            activeColor: Colors.red,
            inactiveColor: Colors.grey[300],
            labels: RangeLabels(
              "Rs ${_currentRangeValues.start.round()}",
              "Rs ${_currentRangeValues.end.round()}",
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _options.map((option) {
                final bool isSelected = _selectedSort == option;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedSort = option;
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.blue.shade50 : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isSelected ? Colors.red : Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          option,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.red : Colors.black,
                          ),
                        ),
                        if (isSelected)
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(
                              Icons.check_circle,
                              size: 18,
                              color: Colors.red,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Clean',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // Background color for "Clear" button
                  ),
                ),
              ),
              SizedBox(
                width: 35,
              ),
              Container(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home_screen(),
                        ));
                  },
                  child: Text('Apply',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Background color for "Clear" button
                  ),
                ),
              ),
            ],
          ),
        ]),
      )
    ])));
  }
}
