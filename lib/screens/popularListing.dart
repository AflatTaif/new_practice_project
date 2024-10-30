
import 'package:flutter/material.dart';

Padding popularListing() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(18, 14, 18, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        const Text("Popular Listing", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: "Nunito"

        ),
        ),
        TextButton(onPressed: (){}, child: const Text("See All", style: TextStyle(
          color: Color(0xff818688),
          fontFamily: "Nunito",
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),),),
      ],
    ),
  );
}



