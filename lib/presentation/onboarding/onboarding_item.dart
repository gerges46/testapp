import 'package:nemoapp/core/network/utils/app_strings.dart';
import 'package:nemoapp/core/network/utils/image_constant.dart';
import 'package:nemoapp/presentation/onboarding/model/onboarding_model.dart';

class OnboardingItems{
  List<OnboardingInfo> items = [
    OnboardingInfo(
        title: AppString.onBordingtitle,
        descriptions: "Lorem ipsum dolor sit amet consectetur. Sit enim quis pharetra in nulla egestas.pharetra in nulla egestas.",
        img: ImageConstant.onboardingone),

    OnboardingInfo(
  title: AppString.onBordingtitle,
  descriptions: "Lorem ipsum dolor sit amet consectetur. Sit enim quis pharetra in nulla egestas.pharetra in nulla egestas.",
  img: ImageConstant.onboarding2
  ),

    OnboardingInfo(
        title: AppString.onBordingtitle,
        descriptions: "Lorem ipsum dolor sit amet consectetur. Sit enim quis pharetra in nulla egestas.pharetra in nulla egestas.",
        img:ImageConstant.onboarding3
    ),

  ];
}