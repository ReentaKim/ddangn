import 'package:fast_app_base/common/entity/post/vo_simple_product_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_product_post.freezed.dart';

// dart run build_runner build
@freezed
class ProductPost with _$ProductPost {
  const factory ProductPost({
    required SimpleProductPost simpleProductPost,
    required String content,
  }) = _ProductPost;
}
