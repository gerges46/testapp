import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nemoapp/presentation/onboarding/bloc/onboarding_bloc.dart';

import 'package:nemoapp/presentation/splash/model/bloc/splash_bloc.dart';
import 'package:nemoapp/presentation/splash/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplashBloc()),
        BlocProvider(create: (context) => OnboardingBloc()),
//BlocProvider(create: (context)=>LoginBloc()),

        // ... other BLoCs ...
      ],
  
      
  child: MaterialApp(
    debugShowCheckedModeBanner: false,
   home: SplashScreen(),
    )
    );
  }
}
