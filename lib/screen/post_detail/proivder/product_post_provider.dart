import 'package:fast_app_base/common/entity/post/vo_product_post.dart';
import 'package:fast_app_base/data/network/daangn_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productPostProvider = AutoDisposeFutureProviderFamily<ProductPost, int>((ref, id) async {
  return await DaangnApi.getPost(id);
});
