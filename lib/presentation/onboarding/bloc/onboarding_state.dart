 class OnboardingState {
  int pageIndex;
  final bool isComplete;

  OnboardingState( {this.isComplete=false, this.pageIndex=0});
}
 class OnboardingComplete extends OnboardingState {}