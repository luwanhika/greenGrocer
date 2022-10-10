import 'package:greengrocer/src/services/http_manager.dart';
import '../../../constants/endpoints.dart';

class HomeRepository {
  final HttpManager _httpManager = HttpManager();

  getAllCategories() async {
  final result = await  _httpManager.restRequest(
      url: Endpoints.getAllCategories,
      method: HttpMethods.post,
    );

    if (result['result'] != null) {
      
      
      
    } else {
      // Erro
    }


  }
}
