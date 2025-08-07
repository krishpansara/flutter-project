import 'package:get/get.dart';


class CounterController extends GetxController {
  RxInt count = 0.obs;


  void increment() {
    if(count.value < limit){
      count.value++;
    }
  }

  void decrement() {
    count.value--;
  }

  void reset() {
    count.value = 0;
  }

  void  setLimit(int limit) {
    limit = Get.arguments['limit'];
  }
}