import 'package:flutter/cupertino.dart';
import 'package:image_search/ui/home_view_model.dart';

class PhotoProvider extends InheritedWidget {
  final HomeViewModel viewModel;

   const PhotoProvider({
    Key? key,
     required this.viewModel,
    required Widget child,
  }) : super(key: key, child: child);

   static PhotoProvider of(BuildContext context) {
     final PhotoProvider? result =
         context.dependOnInheritedWidgetOfExactType<PhotoProvider>();
     assert(result != null, 'No PixabayApi found in context');
     return result!;
   }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    // 변경된 상태를 알려줌
    // return oldWidget.api != api;
    return true;
  }
}
