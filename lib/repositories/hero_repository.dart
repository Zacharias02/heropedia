import 'dart:convert';

import 'package:heropedia/models/heroes_model.dart';
import 'package:heropedia/service/http_client.dart';

class HeroRepository {
  Future<Heroes> getHeroes({String searchKey = 'man'}) async {
    final response = await HttpClient.getRequest(
      apiEndpoint: '/search/$searchKey',
    );

    final Map<String, dynamic> data = jsonDecode(response.body);

    return Heroes.fromJson(data);
  }
}
