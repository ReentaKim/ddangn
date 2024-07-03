import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../common/entity/dummies.dart';
import '../../../../../common/entity/post/vo_simple_product_post.dart';


final postProvider = StateProvider<List<SimpleProductPost>>((ref) => postList);
