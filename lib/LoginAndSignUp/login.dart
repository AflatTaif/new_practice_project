import 'package:flutter/material.dart';
import 'package:new_practice_project/LoginAndSignUp/signUp.dart';
import 'package:new_practice_project/screens/home.dart';

import '../Widgets/alertDialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top background image (Vector 1.png)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Vector 1.png',  // Top image
              fit: BoxFit.cover,
              height: 200,
              color: Colors.red.shade50,
              // Height of the background image
            ),
          ),

          // Bottom background image (Vector 2.png)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Vector 2.png',  // Bottom image
              fit: BoxFit.cover,  // Keep image as it is
              height: 120,
              color: Colors.red.shade50,// Adjust height of the bottom image
            ),
          ),

          // Center the logo in the middle of the Vector 1 background image
          Positioned(
            top: 50,  // Adjust this value to place the logo exactly in the center of Vector 1
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,  // Center the logo
              child: Image.asset(
                'assets/images/Logo.png',  // Logo image
                height: 100,  // Adjust the size of the logo
              ),
            ),
          ),

          // Content in the center (Form content)
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,  // Align to start
                children: [
                  const SizedBox(height: 180),  // Adjust this to control space after the logo

                  // "Log In" title and subtext aligned to the start (left)
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Nunito",
                            ),
                          ),
                          SizedBox(height: 8),  // Adds space between the texts
                          Text(
                            'Hello there, log in to continue!',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                              fontFamily: "Nunito",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Username TextField with icon and underline only
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Username or Email',
                      hintStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Nunito",
                      ),  // Hint text color
                      prefixIcon: Icon(Icons.person_outline, color: Colors.black26),
                      border: InputBorder.none,  // Remove all borders
                      enabledBorder: UnderlineInputBorder(// Show underline when not focused
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder: UnderlineInputBorder(  // Show underline when focused
                        borderSide: BorderSide(color: Colors.deepOrange),  // Orange underline when focused
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Password TextField with icon and underline only
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Nunito",
                      ),  // Hint text color
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.black26),
                      border: InputBorder.none,  // Remove all borders
                      enabledBorder: UnderlineInputBorder(  // Show underline when not focused
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      focusedBorder: UnderlineInputBorder(  // Show underline when focused
                        borderSide: BorderSide(color: Colors.deepOrange),  // Orange underline when focused
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Remember me & Forgot password row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            splashRadius: 4,
                            activeColor: const Color(0xffFF6F37),

                            value: isChecked, // Track the checkbox state
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value ?? false;  // Update the state when clicked
                              });
                            },
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                                color: Colors.black26,
                                fontWeight:FontWeight.w400,
                                fontSize: 16,
                              fontFamily: "Nunito",
                            ),  // Text color for remember me
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          myAlertDialog(context);

                        },
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                              color:Color(0xffFF6F37),
                              fontWeight:FontWeight.w400,
                              fontSize: 16,
                            fontFamily: "Nunito",
                          ),  // Text color for forgot password
                        ),

                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Log In Button (Orange color retained)
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: const Color(0xffFF6F37),  // Orange button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "Nunito",// Keep white text for the button
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),

                  // Don’t have an account? & Create account route
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      const Text(
                        textAlign: TextAlign.center,
                        "Don’t have an account?",
                        style: TextStyle(
                            color: Colors.black26,
                            fontWeight:FontWeight.w400,
                            fontSize: 16,
                          fontFamily: "Nunito",
                        ),  // Text color
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpPage()));
                        },
                        child: const Text(
                          textAlign: TextAlign.center,
                          'Create account',
                          style: TextStyle(
                              color: Color(0xffFF6F37),  // Keep orange color for link
                              fontWeight:FontWeight.w400,
                              fontSize: 16,
                            fontFamily: "Nunito",
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


