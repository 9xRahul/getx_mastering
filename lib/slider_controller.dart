import 'package:get/get.dart';

class Controller extends GetxController {
  RxDouble opacity = .4.obs;
  RxBool notification = false.obs;

  void sliderValue(double newValue) {
    opacity.value = newValue;
  }

  void onSwitchChanged(bool newValue) {
    notification.value = newValue;
  }
}
