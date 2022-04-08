abstract class ApiConfig {
  // TODO: Generate your API key by using your Facebook account in https://superheroapi.com/
  static const String _accessToken = '3778234892222363';

  /// This is the base url of the API
  static const String baseUrl = 'superheroapi.com';
  static const String apiPath = '/api/$_accessToken';
}
