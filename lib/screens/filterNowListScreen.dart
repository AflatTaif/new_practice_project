import 'package:flutter/material.dart';
import 'package:new_practice_project/screens/popularListing_items.dart';

Padding filterNowListScreen() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(14,0,14,60),
    child: ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: PopularListingItems().listingItems.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Color(0xffF5F7F9),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(PopularListingItems().listingItems[index].images,
                                fit: BoxFit.cover,
                                height: 68,
                                width: 68,

                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 19,
                            right: 61,
                            bottom: 60,

                            child: Container(
                              height: 24,
                              width: 24,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffFF6F37),
                              ),
                              child: Transform.scale(
                                scale: 0.6,
                                child: Image.asset(PopularListingItems().listingItems[index].iconThree,color: Colors.white,),
                              ),
                            ),
                          ),

                        ],
                      ),



                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("${PopularListingItems().listingItems[index].title} ",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: const TextStyle(
                                            fontFamily: "Nunito",
                                            fontSize: 18,
                                            fontWeight:FontWeight.w600 ,
                                            color: Colors.black,
                                          ),

                                        ),
                                        const SizedBox(height: 9,),

                                        Text(PopularListingItems().listingItems[index].categoryTwo,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,

                                          style: const TextStyle(
                                            fontFamily: "Nunito",
                                            fontSize: 14,
                                            fontWeight:FontWeight.w500 ,
                                            color: Colors.black87,

                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0,20, 16, 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 0),
                                        child: Container(
                                          height: 26,
                                          width: 58,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(32),

                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Image.asset(PopularListingItems().listingItems[index].iconTwo),

                                              Text(PopularListingItems().listingItems[index].rateText),

                                            ],
                                          ),


                                        ),


                                      ),
                                      const SizedBox(height: 9,),
                                      Row(
                                        children: [
                                          Image.asset(PopularListingItems().listingItems[index].icon),
                                          Text(PopularListingItems().listingItems[index].location)
                                        ],
                                      )
                                    ],
                                  ),
                                ),


                              ],
                            ),
                            const SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.only(right: 14),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [


                                ],
                              ),
                            )
                          ],
                        ),
                      ),


                    ],
                  ),

                ),
              ),
            ),
          );
        }
    ),
  );
}