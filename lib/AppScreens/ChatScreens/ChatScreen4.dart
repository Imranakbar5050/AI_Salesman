import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ist_project/utils/appimages.dart';

class ChatScreen4 extends StatefulWidget {
  const ChatScreen4({super.key});

  @override
  State<ChatScreen4> createState() => _ChatScreen4State();
}

class _ChatScreen4State extends State<ChatScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30), // For spacing at the top
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white60,
                      width: 2,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white60,
                    child: Image(
                      image: AssetImage(AppImages.home_screen_image3),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'SARA',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      'Customer Care Service',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 30, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                      'Hello, Amanda! Welcome to Customer Care Service. We will be happy to help you. Please, provide us more details about your issue before we can start.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Order Issue Bubble (User)
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Check Icon
                const Icon(Icons.check_circle, color: Colors.red, size: 20),
                const SizedBox(width: 8),
                // Issue Text
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 16),
                  child:
                  Text(
                    "Order Issues\nI didn't receive my parcel!",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Order Details Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ListView(
                children: [
                  OrderCard(
                    orderNumber: '#92287157',
                    status: 'Shipped',
                    itemsCount: 3,
                    isSelected: true,
                  ),
                  const SizedBox(height: 8),

                    OrderCard(
                      orderNumber: '#92287157',
                      status: 'Delivered',
                      itemsCount: 2,
                      isSelected: false,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,
          ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: TextField(
        decoration: InputDecoration(
        hintText: 'Type your message...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.send, color: Colors.red),
          onPressed: () {
            // Handle send button functionality here
          },
            ))),
      ) ],
      ),
    );
  }
}

// OrderCard Widget
class OrderCard extends StatelessWidget {
  final String orderNumber;
  final String status;
  final int itemsCount;
  final bool isSelected;

  const OrderCard({
    Key? key,
    required this.orderNumber,
    required this.status,
    required this.itemsCount,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.grey[300] : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Order Information
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order $orderNumber',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                '$itemsCount items | $status',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// Additional Chat Feature Code

