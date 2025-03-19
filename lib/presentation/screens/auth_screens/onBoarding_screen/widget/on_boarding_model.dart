import '../../../../../core/language/app_translation_key.dart';
import '../../../../../core/utils/constants/app_assets.dart';

class OnboardingModel {
  final String title;
  final String subtitle;
  final String image;

  OnboardingModel({required this.title, required this.subtitle, required this.image});
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: AppTranslationKeys.onboarding1Title,
    subtitle: AppTranslationKeys.onboarding1Subtitle,
    image: AppAssets.onBoardingAsset1,
  ),
  OnboardingModel(
    title: AppTranslationKeys.onboarding2Title,
    subtitle: AppTranslationKeys.onboarding2Subtitle,
    image: AppAssets.onBoardingAsset2,
  ),
  OnboardingModel(
    title: AppTranslationKeys.onboarding3Title,
    subtitle: AppTranslationKeys.onboarding3Subtitle,
    image: AppAssets.onBoardingAsset3,
  ),

];
