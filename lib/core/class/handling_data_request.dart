import 'package:ecommerce_wael/core/class/status_request.dart';
import 'package:ecommerce_wael/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest? statusRequest;
  final Widget? widget;
  const HandlingDataRequest({
    Key? key,
    required this.statusRequest,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loading),
          )
        : statusRequest == StatusRequest.offlineFailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offline),
              )
            : statusRequest == StatusRequest.error
                ? Center(
                    child: Lottie.asset(AppImageAsset.nodata),
                  )
                : statusRequest == StatusRequest.serverFailure
                    ? Center(
                        child: Lottie.asset(AppImageAsset.server),
                      )
                    : widget!;
  }
}
