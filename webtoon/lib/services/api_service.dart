import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon/models/webtoon_model.dart';

class ApiService {
  final baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  final String today = 'today';

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(
        url); // Future는 당장 완료될 수 있는 작업이 아니란 뜻으로 작업이 끝날 때까지 기다리기 위해서는 비동기 처리가 필요함
    // Future async throw(반환값)은 하나의 세트
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);

      for (var w in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(w));
      }

      return webtoonInstances;
    }

    throw Error();
  }
}
