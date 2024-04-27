import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemoapp/core/network/utils/app_colors.dart';
import 'package:nemoapp/presentation/onboarding/bloc/onboarding_bloc.dart';
import 'package:nemoapp/presentation/onboarding/bloc/onboarding_state.dart';
import 'package:nemoapp/presentation/onboarding/customPage_indictor.dart';
import 'package:nemoapp/presentation/onboarding/onboarding_item.dart';
import 'package:nemoapp/presentation/opining/opining_screen.dart';
class OnboardingHome extends StatelessWidget {
  OnboardingHome({super.key});
  final controller = OnboardingItems();
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        // Check the specific state to navigate to the next page
        if (state is OnboardingComplete) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => OpiningScreen()));
        }
      },
      child: BlocBuilder<OnboardingBloc, OnboardingState>(
          builder: (context, state) {
        return PageView.builder(

            itemCount: controller.items.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      width: double.infinity,
                      height: 400,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(32)),
                        child: Image.asset(
                          controller.items[index].img,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      controller.items[index].title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 18),
                      child: Text(
                        controller.items[index].descriptions,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    CustomSmoothPageIndictor(controller: pageController),
                    SizedBox(height: 120),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                            color:AppColor.primaryColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        width: 100,
                        height: 91,
                        child: IconButton(
                          onPressed: () {
//Navigator.push(context, MaterialPageRoute(builder: (context)=>OpiningScreen()));
                            if (pageController.page ==
                                controller.items.length - 1) {
                              // If it's the last onboarding page, navigate to the OpeningScreen
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OpiningScreen()));
                            } else {
                              // Otherwise, move to the next onboarding page
                              pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      }),
    ));
  }
}
