import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nemoapp/core/network/utils/app_colors.dart';
import 'package:nemoapp/core/network/utils/image_constant.dart';
import 'package:nemoapp/presentation/onboarding/onboarding_screen.dart';
import 'package:nemoapp/presentation/splash/model/bloc/splash_bloc.dart';
import 'package:nemoapp/presentation/splash/model/bloc/splash_event.dart';
import 'package:nemoapp/presentation/splash/model/bloc/splash_state.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SplashBloc>(context).add(SetSplash());
    return Scaffold(
      body:BlocConsumer<SplashBloc,SplashState>(
        listener: (context,state){
       if(state is SplashLoadedState){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingHome()));
        
   

       }

        },
        builder: (context,state){
          if(state is SplashLoadingState){
            return
              Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColor.primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Image.asset(ImageConstant.logoImage),

                  ],
                ),
              );

          }
          return Container();
        },

      )
    );
  }
}