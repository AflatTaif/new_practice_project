import 'package:flutter/material.dart';
import 'package:new_practice_project/onboarding/onboarding_items.dart';
import 'package:new_practice_project/screens/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = OnboardingItems();
  final pageController = PageController();
  // bool isLastPage = false;
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(

        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: PageView.builder(
          onPageChanged: (index) {
              if(controller.items.length - 1 == index) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
              }
              print(index);
              print(controller.items.length);
          },
            itemCount: controller.items.length,
            controller: pageController,
            itemBuilder: (context, index){
              return Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 48),
                width: 318,
                height: 100,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(controller.items[index].images),
                    const SizedBox(height: 59,),
                    Text(controller.items[index].title,textAlign: TextAlign.center,
                      style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Nunito"
                    ),
                    ),
                    const SizedBox(height: 12,),
                    Text(controller.items[index].description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                fontSize: 16,
                color: Colors.black45,
                fontWeight: FontWeight.w400,
                fontFamily: "Nunito",
                ),

                    ),



                  ],
                ),
              );


        }),
      ),

      bottomSheet: Container(
        height: 150,
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 61),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SmoothPageIndicator(
              controller: pageController,
              count: controller.items.length,
              effect: const WormEffect(
                activeDotColor: Color(0xffFF6F37),
                radius: 8,
                dotWidth: 10,
                dotHeight: 10,
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){
                  Navigator.pushReplacement((context), MaterialPageRoute(builder: (context)=> const HomeScreen()));
                }, child: const Text('Skip',
                  style: TextStyle(
                      color: Color(0xff818688),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Nunito",
                  ),
                ),
                ),

                Container(
                  height: 36,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xffFF6F37),),
                  child: TextButton(

                    onPressed: (){
                    pageController.nextPage(duration: Duration(milliseconds: 600), curve: Curves.easeIn);
                  }, child: const Text('Next',
                    style: TextStyle(
                      fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Nunito",
                        color: Colors.white,
                      // backgroundColor: Color(0xffFF6F37),

                    ),
                  ),
                  ),

                ),

              ],
            ),
          ],
        ),
      ),

    );
  }
}
