import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_address.freezed.dart';

// dart run build_runner build
@freezed
class Address with _$Address {
  const factory Address(
    final String fullAddress,
    final String simpleAddress,
  ) = _Address;

}
