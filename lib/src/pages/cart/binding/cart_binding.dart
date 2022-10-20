import 'package:get/instance_manager.dart';
import 'package:greengrocer/src/pages/cart/controller/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CartController());
  }
}
