import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/data/data_source/result.dart';

class PixabayApi {
  final http.Client client;

  PixabayApi(this.client);

  static const baseUrl = 'https://pixabay.com/api/';
  static const key = '36109738-79c82fb8c094ec3728cdcb84f';

  Future<Result<Iterable>> fetch(String query) async {
    try {
      final response = await client
          .get(Uri.parse('$baseUrl?key=$key&q=$query&image_type=photo'));
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      Iterable hits = jsonResponse['hits'];
      return Result.sucess(hits);
    } catch (e) {
      return const Result.error('네크워크 에러');
    }
  }
}