import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:new_practice_project/screens/popularListing.dart';
import 'package:new_practice_project/screens/popularListingInfo.dart';
import 'package:new_practice_project/screens/popularListing_items.dart';
import 'package:new_practice_project/screens/topCategoriesToListing.dart';
import 'package:standard_searchbar/new/standard_search_anchor.dart';
import 'package:standard_searchbar/new/standard_search_bar.dart';
import 'package:standard_searchbar/new/standard_suggestion.dart';
import 'package:standard_searchbar/new/standard_suggestions.dart';

import 'bottomsheet.dart';
import 'myListing.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),)
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Home', style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 20, fontFamily: "Nunito"),),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Center(
              child: Container(
                color: Colors.red.shade50,
                width: double.infinity,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                    children: [

                      const SizedBox(height: 40,),
                      CircleAvatar(
                        backgroundColor: Colors.red.shade50,
                        radius: 45, // Adjust the radius as needed
                        backgroundImage: const AssetImage("assets/images/MarkStrong.png",),
                      ),
                      const SizedBox(height: 10), // Space between image and text
                      const Text(
                        'Mark Strong',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito"
                        ),
                        // Adjust font size as needed
                      ),
                      const Text(
                        'example@gmail.com',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Nunito"

                        ), // Adjust font size as needed
                      ),
                      const SizedBox(height: 40,)
                    ],
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Image.asset("assets/images/dashboard.png",height: 18,width: 18,),
              title: const Text('Dashboard',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: "Nunito"
              ),
              ),
              onTap: (){},
            ),

            ListTile(
              leading: Image.asset("assets/images/MyPackages.png",height: 18,width: 18,),
              title:const  Text('My Packages',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: "Nunito"
              ),
              ),
              onTap: (){
               
              },
            ),
            ListTile(
              leading: Image.asset("assets/images/Listing.png",height: 18,width: 18,),
              title: const Text('My Listings',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: "Nunito"
              ),),
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyListing()));
              },

            ),
            ListTile(
              leading: Image.asset("assets/images/Wishlist.png",height: 18,width: 18,),
              title:const  Text('Wishlist',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: "Nunito"
              ),),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset("assets/images/ProductInquiry.png",height: 18,width: 18,),
              title:const  Text('Product Inquiry',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: "Nunito"
              ),),
              onTap: (){},
            ),
            ListTile(
              leading: Image.asset("assets/images/Support.png",height: 18,width: 18,),
              title:const  Text('Support Ticket',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  fontFamily: "Nunito"
              ),),
              onTap: (){},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 13),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 24, 0),
                    child: SizedBox(
                      width: 280,
                      child: StandardSearchAnchor(
                        searchBar: StandardSearchBar(
                          borderRadius: 4,
                          height: 46,
                          bgColor: Color(0xffF5F7F9),
                        ),
                        suggestions: StandardSuggestions(
                          suggestions: [
                            StandardSuggestion(text: 'Suggestion 1'),
                            StandardSuggestion(text: 'Suggestion 2'),
                            StandardSuggestion(text: 'Suggestion 3'),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xffFF6F37)
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.format_list_bulleted, color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),

            Center(
              child: topCategories(),
            ),
            Center(
              child: topCategoriesList(),
            ),


            Center(
              child: listingCount(),
            ),
            Center(
              child: popularListing(),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 100),
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: PopularListingItems().listingItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 4/5,
                    ),
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){},

                          child: Stack(
                            children: [
                            Container(
                             decoration: BoxDecoration(
                              color: Color(0xffFFF8F7) ,
                              borderRadius: BorderRadius.circular(4),
                             ),
                            
                              
                              // decoration: BoxDecoration(
                              //
                              // ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: ClipRRect(

                                      borderRadius: BorderRadius.circular(8),
                                      
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: Image.asset(PopularListingItems().listingItems[index].images,
                                            height: 118,
                                            width: 157,
                                            alignment: Alignment.center,





                                          ),
                                          ),
                                          Positioned(
                                          
                                            top: 10,
                                            left: 6,
                                            right: 100,
                                            bottom: 80,
                                            child: Container(
                                              height: 0,
                                              width: 0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Image.asset(PopularListingItems().listingItems[index].iconTwo,
                                                    color: Color(0xffFFC107),
                                                    ),
                                                    Text(PopularListingItems().listingItems[index].rateText,
                                                    style: TextStyle(
                                                      fontFamily: "Nutino",
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                                                                    
                                          Positioned(
                                          
                                            top: 10,
                                            left: 122,
                                            right: 6,
                                            bottom: 80,
                                            child: Container(
                                              height: 0,
                                              width: 0,
                                              decoration: BoxDecoration(
                                                color: Color(0xffFF6F37),
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              child: Transform.scale(
                                                scale: 0.8,
                                                child: Image.asset(PopularListingItems().listingItems[index].iconThree,
                                                color: Colors.white,
                                                                                             ),
                                              ),
                                            ),
                                          ),
                                        
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(PopularListingItems().listingItems[index].title,
                                        style: const TextStyle(
                                          fontFamily: "Nunito",
                                          fontSize: 16,
                                          fontWeight:FontWeight.w600 ,
                                          color: Colors.black,
                                        ),
                                        
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 5),
                                          child: Text(PopularListingItems().listingItems[index].category,
                                          style: const TextStyle(
                                            fontFamily: "Nunito",
                                            fontSize: 14,
                                            fontWeight:FontWeight.w500 ,
                                            color: Colors.black87,
                                          ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(PopularListingItems().listingItems[index].icon),
                                            SizedBox(width: 8,),
                                            Text(PopularListingItems().listingItems[index].location,
                                        style: const TextStyle(
                                          fontFamily: "Nunito",
                                          fontSize: 14,
                                          fontWeight:FontWeight.w500 ,
                                          color: Colors.black54,
                                        ),
                                        ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ],
                          ),
                        ),
                      );
                    }

                ),
              ),
            )
          ],


        ),
      ),


      bottomSheet: bottomSheet(),


    );
  }



}