    import 'package:flutter/material.dart';
import 'package:new_practice_project/LoginAndSignUp/login.dart';

myAlertDialog (context){
  return showDialog(
      context: context,
      builder:(BuildContext context){
        return AlertDialog(
          title: const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              'Forgot Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "Nunito",
                color: Color(0xffFF6F37),
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min
            ,
            children: [


              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Please enter your email address to receive a verification code',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Nunito",
                  ),),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32),
                child: TextField(

                  decoration: InputDecoration(

                    hintText: 'Enter your Email',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Nunito",
                    ),  // Hint text color
                    prefixIcon: Icon(Icons.lock_outline, color: Colors.black26),
                    border: InputBorder.none,  // Remove all borders
                    enabledBorder: UnderlineInputBorder(// Show underline when not focused
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: UnderlineInputBorder(  // Show underline when focused
                      borderSide: BorderSide(color: Color(0xffFF6F37)),  // Orange underline when focused
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      myAlertDialogTwo(context);
                    },
                    style: ElevatedButton.styleFrom(

                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: const Color(0xffFF6F37),  // Orange button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "Nunito",// Keep white text for the button
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );

      }

  );
}
myAlertDialogTwo (context){
  return showDialog(
      context: context,
      builder:(BuildContext context){
        return AlertDialog(

          title: const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              'Enter Your OTP Code',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "Nunito",
                color: Color(0xffFF6F37),
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Enter the 4 digits code that you received on your email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Nunito",
                  ),),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,32,5,0),
                    child: SizedBox(
                      width: 40,
                      child: TextField(


                        decoration: InputDecoration(


                            // Remove all borders
                          enabledBorder: UnderlineInputBorder(// Show underline when not focused
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(  // Show underline when focused
                            borderSide: BorderSide(color: Color(0xffFF6F37)),  // Orange underline when focused
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,32,5,0),
                    child: SizedBox(
                      width: 40,
                      child: TextField(


                        decoration: InputDecoration(


                          // Remove all borders
                          enabledBorder: UnderlineInputBorder(// Show underline when not focused
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(  // Show underline when focused
                            borderSide: BorderSide(color: Color(0xffFF6F37)),  // Orange underline when focused
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,32,5,0),
                    child: SizedBox(
                      width: 40,
                      child: TextField(


                        decoration: InputDecoration(


                          // Remove all borders
                          enabledBorder: UnderlineInputBorder(// Show underline when not focused
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(  // Show underline when focused
                            borderSide: BorderSide(color: Color(0xffFF6F37)),  // Orange underline when focused
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,32,5,0),
                    child: SizedBox(
                      width: 40,
                      child: TextField(


                        decoration: InputDecoration(


                          // Remove all borders
                          enabledBorder: UnderlineInputBorder(// Show underline when not focused
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(  // Show underline when focused
                            borderSide: BorderSide(color: Color(0xffFF6F37)),  // Orange underline when focused
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32,),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      myAlertDialogThree(context);

                    },
                    style: ElevatedButton.styleFrom(

                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: const Color(0xffFF6F37),  // Orange button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "Nunito",// Keep white text for the button
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );

      }

  );
}

myAlertDialogThree (context){
  return showDialog(
      context: context,
      builder:(BuildContext context){
        return AlertDialog(
          title: const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              'Create New Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "Nunito",
                color: Color(0xffFF6F37),
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min
            ,
            children: [


              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Set the new password for your account so that you can login and access all the features.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Nunito",
                  ),),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 32),
                child: Column(
                  children: [
                    TextField(

                      decoration: InputDecoration(

                        hintText: 'New Password',
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Nunito",
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.black26),// Hint text color
                        prefixIcon: Icon(Icons.lock_outline, color: Colors.black26),
                        border: InputBorder.none,  // Remove all borders
                        enabledBorder: UnderlineInputBorder(// Show underline when not focused
                          borderSide: BorderSide(color: Colors.black12),
                        ),
                        focusedBorder: UnderlineInputBorder(  // Show underline when focused
                          borderSide: BorderSide(color: Color(0xffFF6F37)),  // Orange underline when focused
                        ),
                      ),
                    ),
                    TextField(

                      decoration: InputDecoration(

                        hintText: 'Confirm',
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Nunito",
                        ),

                        suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.black26),// Hint text color
                        prefixIcon: Icon(Icons.lock_outline, color: Colors.black26),
                        border: InputBorder.none,  // Remove all borders
                        enabledBorder: UnderlineInputBorder(// Show underline when not focused
                          borderSide: BorderSide(color: Colors.black12),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          // Show underline when focused
                          borderSide: BorderSide(color: Color(0xffFF6F37)),  // Orange underline when focused
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      const LoginPage();

                    },
                    style: ElevatedButton.styleFrom(

                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: const Color(0xffFF6F37),  // Orange button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "Nunito",// Keep white text for the button
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );

      }

  );
}