import 'dart:convert';

import 'package:image_search/data/photo_api_repository.dart';

import '../model/Photo.dart';
import 'package:http/http.dart' as http;

class PixabayApi implements PhotoApiRepository {
  final baseUrl = 'https://pixabay.com/api/';
  final key = '36109738-79c82fb8c094ec3728cdcb84f';

  @override
  Future<List<Photo>> fetch(String query) async {
    final response = await http.get(Uri.parse(
        '$baseUrl/?key=$key&q=$query&image_type=photo'));
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable hits = jsonResponse['hits'];
    return hits.map((e) => Photo.fromJson(e)).toList();
  }
}