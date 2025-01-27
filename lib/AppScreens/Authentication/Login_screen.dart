import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import '../Home_screen.dart';
import 'Forgot_screen.dart';
import 'Signup_screen.dart';
import 'Start_screen.dart';

class Login_screen extends StatelessWidget {
  final File? image;

  const Login_screen({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    void _signIn(BuildContext context) async {
      final email = emailController.text;
      final password = passwordController.text;

      try {
        final UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login Successful')),
        );
        // Navigate to Home_screen and pass the image
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home_screen(
              previousImage: image != null ? FileImage(image!) : null,
            ),
          ),
        );
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.message}')),
        );
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              ClipOval(
                child: Image.file(
                  image!,
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 20),
            // "Login" Title
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Login',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Good to see you back!',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: const Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _signIn(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Login', style: TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                // Navigate to the Forgot Password screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Forgot_screen()),
                );
              },
              child: const Text(
                'Forgot your password?',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                // Navigate to the Sign In screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup_screen()),
                );
              },
              child: const Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                // Navigate to the Sign In screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Start_screen()),
                );
              },
              child: const Text(
                'cancel',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}