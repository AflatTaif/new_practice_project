import 'package:flutter/material.dart';
import 'package:new_practice_project/screens/MyListingInside/renderingIsometricItems.dart';
import 'package:new_practice_project/screens/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class RenderingIsometric extends StatefulWidget {
  const RenderingIsometric({super.key});

  @override
  State<RenderingIsometric> createState() => _RenderingIsometricState();
}

class _RenderingIsometricState extends State<RenderingIsometric> {
  final controller = RenderingIsometricItems();
  final pageController = PageController();

  bool isLastPage = false;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 0,),
        child: Stack(
          children: [
            Container(
              width: 430,
              height: 342,
              child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  isLastPage = (index == controller.itemsLand.length - 1);
                });
              },
              itemCount: controller.itemsLand.length,
              controller: pageController,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),

                  
                  child:ClipRRect(
                    
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(RenderingIsometricItems().itemsLand[index].images, fit:BoxFit.cover,

                    )
                    ),
                      
                      
              
                        
                        
                 
                  );
                
              },
                        ),
            ),
            Positioned(

              top: 29,
              left: 345,
              right: 36,
              bottom: 282,
              child: InkWell(
                onTap: () {
                
                },
                child: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                    color: const Color(0xffFF6F37),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Transform.scale(
                    scale: 0.8,
                    child: Image.asset("assets/images/bottomsheet2.png",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          Positioned(

              top: 29,
              left: 36,
              right: 345,
              bottom: 282,
              child: InkWell(
                onTap: () {
                
                },
                child: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                    color: const Color(0xffE8AA92),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Transform.scale(
                    scale: 0.8,
                    child: Icon(Icons.arrow_back, color: Colors.white,)
                  ),
                ),
              ),
            ),
            Positioned(

              top: 282,
              left: 345,
              right: 36,
              bottom: 29,
              child: InkWell(
                onTap: () {
                
                },
                child: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                    color: const Color(0xffFF6F37),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Transform.scale(
                    scale: 0.8,
                    child: Icon(Icons.share, color: Colors.white,)
                  ),
                ),
              ),
            ),
            Positioned(

              top: 282,
              left: 36,
              right: 305,
              bottom: 29,
                child: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                    color: const Color(0xffFF6F37),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Transform.scale(
                    scale: 0.8,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.remove_red_eye_outlined, color: Colors.white,),
                        Text("1105", style: TextStyle(
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.white,
                        ),)
                      ],
                    )
                  ),
                ),
              
            ),
           Padding(
             padding: const EdgeInsets.fromLTRB(175,300, 20, 0),
             child: SmoothPageIndicator(
                  controller: pageController,
                  count: controller.itemsLand.length,
                  effect: const WormEffect(
                    dotColor: Colors.white,
                    activeDotColor: Color(0xffFF6F37),
                    radius: 8,
                    dotWidth: 10,
                    dotHeight: 10,
                  ),
                ),
           ),
            
          ],
          
        ),
      ),

    );
  }
}
