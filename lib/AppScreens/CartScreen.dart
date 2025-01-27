import 'package:flutter/material.dart';

import 'Full_profile_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        backgroundColor: Colors.red,
      ),
      body: cart.isEmpty
          ? const Center(
        child: Text(
          "Your cart is empty.",
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final item = cart[index];
          return ListTile(
            leading: Image.asset(
              item["image"]!,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            title: Text(item["text"]!),
            subtitle: Text(item["price"]!),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                setState(() {
                  // Remove item from cart
                  cart.removeAt(index);
                });
              },
            )

          );
        },
      ),
    );
  }
}
