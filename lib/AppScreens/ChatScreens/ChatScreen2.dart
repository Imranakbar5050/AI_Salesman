import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ist_project/AppScreens/ChatScreens/ChatScreen.dart';
import 'package:ist_project/AppScreens/ChatScreens/ChatScreen3.dart';

import '../../utils/appimages.dart';

class ChatScreen2 extends StatefulWidget {
  const ChatScreen2({super.key});

  @override
  State<ChatScreen2> createState() => _ChatScreen2State();
}

class _ChatScreen2State extends State<ChatScreen2> {
  String? selectedIssue; // Move selectedIssue here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30), // For spacing at the top
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
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.shopping_bag,color: Colors.red
                     ,
                      ) // Placeholder for chatbot icon
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Chat Bot',
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
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'What\'s your issue?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildIssueButton('I didn\'t recieve my parcel'),
                _buildIssueButton('I want to cancel my order'),
                _buildIssueButton('I want to return my order'),
                _buildIssueButton('Package was damaged'),
                _buildIssueButton('Other'),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(

              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen3(),));
                if (selectedIssue != null) {
                  // Navigate to the next screen or perform an action
                  print('Selected Issue: $selectedIssue');
                } else {
                  print('No issue selected');
                }
              },
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.red,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Next', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIssueButton(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIssue = text;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(8),
          color: selectedIssue == text ? Colors.red : Colors.white,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: selectedIssue == text ? Colors.white : Colors.red,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
