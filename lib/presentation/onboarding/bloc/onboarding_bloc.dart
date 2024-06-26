import 'package:bloc/bloc.dart';


import 'onboarding_event.dart';
import 'onboarding_state.dart';


class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState()) {
    on<OnboardingEvent>((event, emit) {
      return emit(OnboardingState(pageIndex: state.pageIndex));
    });
  }
}
