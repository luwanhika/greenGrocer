import 'package:get/instance_manager.dart';
import 'package:greengrocer/src/pages/orders/controller/all_orders_controller.dart';

class OrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AllOrdersController());

  }

}