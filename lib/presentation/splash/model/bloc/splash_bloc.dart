import 'package:bloc/bloc.dart';
import 'package:nemoapp/presentation/splash/model/bloc/splash_event.dart';
import 'package:nemoapp/presentation/splash/model/bloc/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent,SplashState>{

  SplashBloc():super (SplashInitial()){
    on<SetSplash>((event, emit) async{
      emit(SplashLoadingState());
      await Future.delayed(Duration(seconds: 3));
      emit(SplashLoadedState());
    });
  }
}