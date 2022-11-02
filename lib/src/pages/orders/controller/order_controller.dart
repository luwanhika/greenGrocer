import 'package:get/get.dart';
import 'package:greengrocer/src/pages/auth/controller/auth_controller.dart';
import 'package:greengrocer/src/pages/orders/repository/orders_repository.dart';

class OrderController extends GetxController {
  final ordersRepository = OrdersRepository();
  final authController = Get.find<AuthController>();

  Future getOrderItems() async {
    ordersRepository.getOrderItems(
      orderId: authController.user.id!,
      token: authController.user.token!,
    );
  }
}
