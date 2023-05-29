import 'dart:convert';

import 'package:image_search/data/photo_api_repository.dart';

import '../model/photo.dart';
import 'package:http/http.dart' as http;

class PixabayApi implements PhotoApiRepository {
  static const baseUrl = 'https://pixabay.com/api/';
  static const key = '36109738-79c82fb8c094ec3728cdcb84f';

  /**
   * {}를 하면 파라미터에 값을 필수로 안넣어도 된다
   * 파라미터에 값이 없는 경우 client의 값은 null이 된다
   */
  @override
  Future<List<Photo>> fetch(String query, {http.Client? client}) async {
    client ??= http.Client(); // null이면 기본 값으로 넣어준다

    final response = await client.get(Uri.parse(
        '$baseUrl?key=$key&q=$query&image_type=photo'));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e))
    .
    toList
    (
    );
  }
}