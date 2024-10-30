import 'package:flutter/material.dart';
import 'package:new_practice_project/screens/popularListing_items.dart';
import 'package:standard_searchbar/new/standard_search_anchor.dart';
import 'package:standard_searchbar/new/standard_search_bar.dart';
import 'package:standard_searchbar/new/standard_suggestion.dart';
import 'package:standard_searchbar/new/standard_suggestions.dart';

import 'bottomsheet.dart';

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
                                color: isActive ? Color(0xffFF6F37) : Colors.white,
                              ),
                              child: Image.asset("assets/images/ListIcon.png",color: Colors.black,),
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
                                color: !isActive ? Color(0xffFF6F37) : Colors.white,
                              ),
                              child: Image.asset("assets/images/Grid.png",color: Colors.black,),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 100),
                child: GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: PopularListingItems().listingItems.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                                  color: Color(0xffF5F7F9) ,
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
                                                        style: const TextStyle(
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