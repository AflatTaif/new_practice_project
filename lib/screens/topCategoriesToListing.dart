import 'package:flutter/material.dart';

Padding listingCount() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18),
    child: Row(
      children: [
        Container(
          height: 95,
          width: 180,
          color: const Color(0xffFFEDEB),

          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset("assets/images/Intersect.png"),

              ),
              Positioned(
                top: 10,
                right: 10,
                child: Image.asset("assets/images/List.png"),

              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("82", style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Nunito",

                    ),
                    ),
                    Text("Total Listing", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Nunito",

                    ),
                    ),
                  ],
                ),
              ),


            ],

          ),


        ),
        const SizedBox(width: 15,),
        Container(
          height: 95,
          width: 180,
          color: const Color(0xffFFEDEB),

          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset("assets/images/Intersect.png"),

              ),
              Positioned(
                top: 10,
                right: 10,
                child: Image.asset("assets/images/List.png"),

              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("24", style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Nunito",

                    ),
                    ),
                    Text("Active Listing", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Nunito",

                    ),
                    ),
                  ],
                ),
              ),


            ],

          ),


        ),
      ],
    ),
  );
}

Padding topCategoriesList() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 32),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            InkWell(
               radius: 20,
              
              onTap: (){},
              child: CircleAvatar(
                radius: 30,
                backgroundColor: const Color(0xffFFEDEB),
                child: Image.asset(
                  "assets/images/Hotel.png", width: 24, height: 24,),
              
              ),
            ),
            const SizedBox(height: 6,),
            const Text("Hotel",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Column(
          children: [
            InkWell(
              radius: 20,
              
              onTap: (){},
              child: CircleAvatar(
                radius: 30,
                backgroundColor: const Color(0xffFFEDEB),
                child: Image.asset(
                  "assets/images/Shop.png", width: 24, height: 24,),
              ),
            ),
            const SizedBox(height: 6,),
            const Text("Shopping",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Column(
          children: [
            InkWell(
               radius: 20,
              
              onTap: (){},
              child: CircleAvatar(
                radius: 30,
                backgroundColor: const Color(0xffFFEDEB),
                child: Image.asset(
                  "assets/images/Furniture.png", width: 24,
                  height: 24,),
              ),
            ),
            const SizedBox(height: 6,),
            const Text("Furniture",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Column(
          children: [
            InkWell(
               radius: 20,
              
              onTap: (){},
              child: CircleAvatar(
                radius: 30,
                backgroundColor: const Color(0xffFFEDEB),
                child: Image.asset(
                  "assets/images/Book.png", width: 24, height: 24,),
              ),
            ),
            const SizedBox(height: 6,),
            const Text("Education",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Padding topCategories() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(34,16, 24, 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        const Text("Top Categories", style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: "Nunito"

        ),
        ),
        TextButton(onPressed: () {},
          child: const Text("See All", style: TextStyle(
            color: Color(0xff818688),
            fontFamily: "Nunito",
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),),),
      ],
    ),
  );
}