import 'package:get/get.dart';

class SliderController extends GetxController {
  RxDouble opacity = .4.obs;

  void sliderValue(double newValue) {
    opacity.value = newValue;
  }
}
