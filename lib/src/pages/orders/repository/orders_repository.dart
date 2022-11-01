import 'package:greengrocer/src/constants/endpoints.dart';
import 'package:greengrocer/src/models/order_model.dart';
import 'package:greengrocer/src/services/http_manager.dart';

import '../orders_result/orders_result.dart';

class OrdersRepository {
  final _httpManager = HttpManager();

  Future<OrdersResult<List<OrderModel>>> tAllOrders({
    required String token,
    required String userId,
  }) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.getAllOders,
      method: HttpMethods.post,
      headers: {
        'X-Parse-Session-Token': token,
      },
      body: {
        'user': userId,
      },
    );

    if (result['result'] != null) {
      List<OrderModel> orders =
          List<Map<String, dynamic>>.from(result['result'])
              .map(OrderModel.fromJson)
              .toList();

      return OrdersResult<List<OrderModel>>.success(orders);
    } else {
      OrdersResult.error('Não foi possivel recuperar os pedidos');
    }
  }
}
