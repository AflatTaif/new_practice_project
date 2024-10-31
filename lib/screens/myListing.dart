import 'package:flutter/material.dart';
import 'package:standard_searchbar/new/standard_search_anchor.dart';
import 'package:standard_searchbar/new/standard_search_bar.dart';
import 'package:standard_searchbar/new/standard_suggestion.dart';
import 'package:standard_searchbar/new/standard_suggestions.dart';

import 'bottomsheet.dart';
import 'filterNowGridScreen.dart';
import 'filterNowListScreen.dart';

class MyListing extends StatefulWidget {
  const MyListing({super.key});


  @override
  State<MyListing> createState() => _MyListingState();
}

class _MyListingState extends State<MyListing> {

  bool isActive = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          
          onPressed: (){
            Navigator.pop(context);
          },
        icon: const Icon(
          Icons.arrow_back_ios,
           color: Colors.black54,
           weight: 8,

          
           ),
        ),
        title: const Text('My Listing', style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 20, fontFamily: "Nunito"),),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 13),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 18, 0),
                    child: SizedBox(
                      width: 350,
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

                ],
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(34,16, 24, 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    const Text("Filter Now", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Nunito"

                    ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                  isActive = !isActive;
                              });
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              
                              decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.circular(2),
                                color: isActive ? const Color(0xffFF6F37) : Colors.white,
                              ),
                              child: Image.asset("assets/images/ListIcon.png",
                              color: isActive ? const Color(0xffFFFFFF) : Colors.black,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                  isActive = !isActive;
                              });
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: !isActive ? const Color(0xffFF6F37) : Colors.white,
                              ),
                              child: Image.asset("assets/images/Grid.png",
                              color:!isActive ? const Color(0xffFFFFFF) : Colors.black,),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            !isActive ? filterNowGridScreen() : filterNowListScreen(),
            // Center(
            //   child: filterNowGridScreen(),
            // ),

            // Center(
            //   child: filterNowListScreen(),
            // ),

            
          ],


        ),
      ),


      bottomSheet: bottomSheet(),


    );
  }







}