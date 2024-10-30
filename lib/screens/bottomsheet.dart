import 'package:flutter/material.dart';

Container bottomSheet() {
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(padding: EdgeInsets.fromLTRB(0, 17,0,58)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffFFEAE1),
              minimumSize: const Size(101, 36),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),

              )


          ),
          onPressed: (){},
          child: Row(
            children: [
              Image.asset("assets/images/Group 110.png", width: 19, height: 20,),
              const Padding(padding: EdgeInsets.fromLTRB(8, 0, 0, 0)),

              const Text("Home", style: TextStyle(
                color: Color(0xffFF6F37),
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: "nunito",
              ),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: (){},
          child: Image.asset("assets/images/bottomsheet1.png", height: 20, width: 19,),
        ),
        TextButton(
          onPressed: (){},
          child: Image.asset("assets/images/bottomsheet2.png", height: 20, width: 19,),
        ),
        TextButton(
          onPressed: (){},
          child: Image.asset("assets/images/bottomsheet3.png", height: 20, width: 19,),
        ),

      ],

    ),
  );
}

