import 'package:flutter/material.dart';
import 'package:new_practice_project/screens/popularListing_items.dart';

Padding filterNowGridScreen() {
  return Padding(
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
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>RenderingIsometric(listingId: index)));
              },

              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F7F9) ,
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
                                            color: const Color(0xffFFC107),
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
                                      color: const Color(0xffFF6F37),
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
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
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
                                  const SizedBox(width: 8,),
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
  );
}