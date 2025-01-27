import 'package:flutter/material.dart';
import 'package:ist_project/utils/appimages.dart';

// Global favorite list
List<Map<String, String>> favorites = [];
List<Map<String, String>> cart = [];

class Full_profile_screen extends StatefulWidget {
  final String imagepath;
  final String text;
  final String price;

  const Full_profile_screen({
    Key? key,
    required this.imagepath,
    required this.text,
    required this.price,
  }) : super(key: key);

  @override
  State<Full_profile_screen> createState() => _Full_profile_screenState();
}

class _Full_profile_screenState extends State<Full_profile_screen> {
  // Helper to check if an item is in favorites
  bool isFavorite(String text) {
    return favorites.any((item) => item['text'] == text);
  }

  // Toggle favorite status
  void toggleFavorite(String image, String text) {
    setState(() {
      if (isFavorite(text)) {
        favorites.removeWhere((item) => item['text'] == text);
      } else {
        favorites.add({"image": image, "text": text});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset(
                widget.imagepath,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              //const SizedBox(height: 10),
              Text(
                widget.price,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
              //const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    cart.add({
                      "image": widget.imagepath,
                      "text": widget.text,
                      "price": widget.price,
                    });
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("${widget.text} added to the cart."),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text("Add to Cart"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  'Recommendation',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image(image: AssetImage(AppImages.home_screen_image3)),
                          ),
                          const Text('T-shirts'),
                          IconButton(
                            icon: Icon(
                              isFavorite("T-shirts") ? Icons.favorite : Icons.favorite_border,
                              color: isFavorite("T-shirts") ? Colors.red : Colors.grey,
                            ),
                            onPressed: () {
                              toggleFavorite(AppImages.home_screen_image3, "T-shirts");
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    isFavorite("T-shirts")
                                        ? "T-shirts added to favorites."
                                        : "T-shirts removed from favorites.",
                                  ),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 110),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Image(image: AssetImage(AppImages.home_screen_image2)),
                        ),
                        const Text('Shoes'),
                        IconButton(
                          icon: Icon(
                            isFavorite("Shoes") ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite("Shoes") ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            toggleFavorite(AppImages.home_screen_image2, "Shoes");
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  isFavorite("Shoes")
                                      ? "Shoes added to favorites."
                                      : "Shoes removed from favorites.",
                                ),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
