import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/entity/post/vo_simple_product_post.dart';
import 'package:fast_app_base/common/entity/product/product_status.dart';
import 'package:fast_app_base/common/entity/product/vo_product.dart';
import 'package:fast_app_base/common/entity/user/vo_address.dart';
import 'package:fast_app_base/common/entity/user/vo_user.dart';

String picSum(int id) {
  return 'https://picsum.photos/id/$id/200/200';
  // return 'https://xsgames.co/randomusers/avatar.php?g=female';
}

final user1 = User(
  id: 1,
  nickname: '홍길동',
  profileUrl: picSum(1010),
  temperature: 36.5,
);
final user2 = User(
  id: 2,
  nickname: '바다',
  profileUrl: picSum(800),
  temperature: 36.5,
);
final user3 = User(
  id: 3,
  nickname: '파도',
  profileUrl: picSum(900),
  temperature: 36.5,
);

final product1 = Product(
  user1,
  '아이폰12',
  800000,
  ProductStatus.normal,
  [
    picSum(500),
    picSum(300),
    picSum(200),
  ],
);

final product2 = Product(
  user2,
  '갤럭시 S21',
  900000,
  ProductStatus.booked,
  [
    picSum(600),
    picSum(400),
    picSum(250),
  ],
);

final product3 = Product(
  user3,
  '맥북 프로 16인치',
  2500000,
  ProductStatus.complete,
  [
    picSum(700),
    picSum(550),
    picSum(450),
  ],
);

final post1 = SimpleProductPost(
  1,
  product1.user,
  product1,
  '글의 내용입니다.',
  const Address('서울특별시', '앱동'),
  3,
  2,
  DateTime.now().subtract(30.minutes),
);
final post2 = SimpleProductPost(
  2,
  product2.user,
  product2,
  '갤럭시 S21 거의 새것입니다. 최상의 상태를 자랑합니다.',
  const Address('서울특별시', '강남구'),
  5,
  1,
  DateTime.now().subtract(5.minutes),
);

final post3 = SimpleProductPost(
  3,
  product3.user,
  product3,
  '맥북 프로 16인치 판매합니다. 고성능 노트북을 찾으시는 분께 추천드립니다.',
  const Address('전주시', '덕진구'),
  8,
  3,
  DateTime.now().subtract(10.seconds),
);

final postList = [post1, post2, post3];
