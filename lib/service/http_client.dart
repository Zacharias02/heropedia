import 'package:heropedia/service/api_config.dart';
import 'package:http/http.dart';

class HttpClient {
  HttpClient._();

  static final HttpClient _instance = HttpClient._();
  factory HttpClient() => _instance;

  static Future<Response> getRequest({
    String baseUrl = ApiConfig.baseUrl,
    required String apiEndpoint,
  }) async {
    Uri url = Uri.https(baseUrl, ApiConfig.apiPath + apiEndpoint);

    Response response = await get(url);

    if (response.statusCode == 200) {
      return response;
    } else {
      throw 'Unable to get request';
    }
  }
}
