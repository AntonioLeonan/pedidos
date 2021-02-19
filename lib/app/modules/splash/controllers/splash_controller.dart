import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pedidos/app/routes/app_pages.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController animationController;
  Animation<double> animation;
  CurvedAnimation curve;
  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = Tween(begin: -1.0, end: 1.0).animate(animationController);
    animationController.forward();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Get.offAndToNamed(Routes.LOGIN);
    });
  }

  @override
  void onReady() {
    super.onReady();
  }
}
