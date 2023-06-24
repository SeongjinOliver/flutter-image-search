// import 'package:image_search/domain/model/photo.dart';
//
// class HomeState {
//   final List<Photo> photos;
//   final bool isLoading;
//
//   HomeState(this.photos, this.isLoading);
//
//   HomeState copy({List<Photo>? photos, bool? isLoading}) {
//     return HomeState(
//       photos ??= this.photos,
//       isLoading ??= this.isLoading,
//     );
//   }
// }

import 'package:image_search/domain/model/photo.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState(
    List<Photo>? photos,
    bool? isLoading,
  ) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) => _$HomeStateFromJson(json);
}