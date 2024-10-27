import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool isChecked = false;
  PhoneNumber? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(

            children: [
              // Top background image (Vector 1.png)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/LoginAndSignUp/Vector 1.png',  // Top image
                  fit: BoxFit.fill,
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
                  'assets/images/LoginAndSignUp/Vector 2.png',  // Bottom image
                  fit: BoxFit.cover,  // Keep image as it is
                  height: 100,
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
                    'assets/images/LoginAndSignUp/Logo.png',  // Logo image
                    height: 100,  // Adjust the size of the logo
                  ),
                ),
              ),

              // Content in the center (Form content)
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,  // Align to start
                    children: [
                      const SizedBox(height: 170),  // Adjust this to control space after the logo

                      // "Log In" title and subtext aligned to the start (left)
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: "Nunito",

                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 8),  // Adds space between the texts
                              Text(
                                'Hey there, Sign Up to continue!',
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
                      const Row(
                        children: [
                          Icon(Icons.person_outline, color: Colors.black26),
                          SizedBox(width: 10 ,),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Full Name',
                                hintStyle: TextStyle(
                                  fontFamily: "Nunito",
                                  color: Colors.black26,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),

                                border: InputBorder.none, // Remove all borders
                                enabledBorder: UnderlineInputBorder( // Show underline when not focused
                                  borderSide: BorderSide(color: Colors.black12),
                                ),
                                focusedBorder: UnderlineInputBorder( // Show underline when focused
                                  borderSide: BorderSide(color: Colors.deepOrange), // Orange underline when focused
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Email Address TextField
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                            fontFamily: "Nunito",
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(Icons.email, color: Colors.black26),
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Username TextField
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            fontFamily: "Nunito",
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(Icons.person_outline, color: Colors.black26),
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Phone Number TextField with country code and flag
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.black12,), // Underline
                          ),
                        ),
                        child: InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            setState(() {
                              phoneNumber = number; // Store the phone number details
                            });
                          },
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: const TextStyle(color: Colors.black26),
                          initialValue: phoneNumber,
                          formatInput: false,
                          keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
                          inputDecoration: const InputDecoration(
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                              color: Colors.black26,
                              fontSize: 16,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w400,
                            ),
                            prefixStyle: TextStyle(
                            ),
                            prefixIcon: Icon(Icons.phone, color: Colors.black26, ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Password TextField
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: "Nunito",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.black26),
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Confirm Password TextField
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                            fontFamily: "Nunito",
                            color: Colors.black26,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(Icons.lock_outline, color: Colors.black26),
                          border: InputBorder.none,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                        ),
                      ),



                      const SizedBox(height: 30),

                      // Log In Button (Orange color retained)
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle log in action
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            backgroundColor: Colors.deepOrange.shade400, // Orange button color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: const Text(
                            'Create an Account',
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,  // Keep white text for the button
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Don’t have an account? & Create account route
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          const Text(
                            textAlign: TextAlign.center,
                            "Already have an account?",
                            style: TextStyle(color: Colors.black26,fontWeight:FontWeight.w400, fontSize: 16,fontFamily: "Nunito",),  // Text color
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                              // Navigate to create account page
                            },
                            child: const Text(
                              textAlign: TextAlign.center,
                              'Login',
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontFamily: "Nunito",// Keep orange color for link
                                  fontWeight:FontWeight.w400,
                                  fontSize: 16
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
        ),
      ),
    );
  }
}
