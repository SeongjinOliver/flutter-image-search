import 'package:flutter_test/flutter_test.dart';
import 'package:image_search/data/photo_api_repository.dart';
import 'package:image_search/model/photo.dart';
import 'package:image_search/ui/home_view_model.dart';

void main() {
  test('Stream이 잘 동작해야 한다', () async {
    final viewModel = HomeViewModel(FakePhotoApiRepository());

    await viewModel.fetch('apple');
    await viewModel.fetch('iphone');

    final result = fakeJson.map((e) => Photo.fromJson(e)).toList();

    expect(
        viewModel.photoStream,
        emitsInOrder([
          equals([]),
          equals(result),
          equals(result),
        ]),
    );
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<Photo>> fetch(String query) async {
    Future.delayed(const Duration(milliseconds: 500));

    return fakeJson.map((e) => Photo.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 634572,
    "pageURL": "https://pixabay.com/photos/apples-fruits-red-ripe-vitamins-634572/",
    "type": "photo",
    "tags": "apples, fruits, red",
    "previewURL": "https://cdn.pixabay.com/photo/2015/02/13/00/43/apples-634572_150.jpg",
    "previewWidth": 100,
    "previewHeight": 150,
    "webformatURL": "https://pixabay.com/get/g771df39144d3e6994d7f15cd208f16bc909461c6a2bb4a5d92cfd64d7fd355ce3782952069f2983772feac906864ea95_640.jpg",
    "webformatWidth": 427,
    "webformatHeight": 640,
    "largeImageURL": "https://pixabay.com/get/g37dca4e774d4aebd510aae7233f29ba9e933b048370cd10ec749d905ab49e842345766d4a960d63f0179f406023772773e589b1a9ae21e0fb9f39b8862b95124_1280.jpg",
    "imageWidth": 3345,
    "imageHeight": 5017,
    "imageSize": 811238,
    "views": 494491,
    "downloads": 293236,
    "collections": 1283,
    "likes": 2369,
    "comments": 195,
    "user_id": 752536,
    "user": "Desertrose7",
    "userImageURL": "https://cdn.pixabay.com/user/2016/03/14/13-25-18-933_250x250.jpg"
  },
  {
    "id": 1868496,
    "pageURL": "https://pixabay.com/photos/apple-computer-desk-workspace-1868496/",
    "type": "photo",
    "tags": "apple, computer, desk",
    "previewURL": "https://cdn.pixabay.com/photo/2016/11/29/08/41/apple-1868496_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL": "https://pixabay.com/get/g6dbae24bdc3523a83b47e6fa7647acc88c67ac84f1ed526ce522b8e6593c6f35e9308810c8cdee99df9ceff404b216455edcfe58e4d35a7ee2f59716f28d37b0_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL": "https://pixabay.com/get/ga48aac86386dfdcf6bb35dde7f1103d3eacc368773b6d2b10dcf5ff7ff793ec64558313c0137b344345d43a51acc994f1983081c5456aafdbdf1f46cf060dffb_1280.jpg",
    "imageWidth": 5184,
    "imageHeight": 3456,
    "imageSize": 2735519,
    "views": 712077,
    "downloads": 520392,
    "collections": 1396,
    "likes": 1049,
    "comments": 279,
    "user_id": 2286921,
    "user": "Pexels",
    "userImageURL": "https://cdn.pixabay.com/user/2016/03/26/22-06-36-459_250x250.jpg"
  }
];