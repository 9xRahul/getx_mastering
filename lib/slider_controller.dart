import 'package:get/get.dart';

class Controller extends GetxController {
  RxDouble opacity = .4.obs;
  RxBool notification = false.obs;

  RxList<String> fruitList = ["Apple", "Orange", "Mango", "Apple"].obs;
  RxList<dynamic> tempFavList = [].obs;

  void sliderValue(double newValue) {
    opacity.value = newValue;
  }

  void onSwitchChanged(bool newValue) {
    notification.value = newValue;
  }

  void addToFav(int index) {
    if (tempFavList.contains(fruitList[index])) {
      tempFavList.remove(fruitList[index]);
    } else {
      tempFavList.add(fruitList[index]);
    }
  }
}
