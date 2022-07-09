import 'package:ecommerce_wael/core/constant/imageasset.dart';
import 'package:ecommerce_wael/data/model/onboardingmodel.dart';
import 'package:get/get.dart';

List<OnBoardingModel> onboardingList = [
  OnBoardingModel(
    title: "first screen".tr,
    image: AppImageAsset.onBoardingImageOne,
    body: "first screen body".tr,
  ),
  OnBoardingModel(
    title: "second screen".tr,
    image: AppImageAsset.onBoardingImageTwo,
    body: "second screen body".tr,
  ),
  OnBoardingModel(
    title: "third screen".tr,
    image: AppImageAsset.onBoardingImageThree,
    body: "third screen body".tr,
  ),
  OnBoardingModel(
    title: "fourth screen".tr,
    image: AppImageAsset.onBoardingImageFour,
    body: "fourth screen body".tr,
  ),
];
