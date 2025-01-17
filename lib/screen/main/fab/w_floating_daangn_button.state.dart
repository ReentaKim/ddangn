import 'package:freezed_annotation/freezed_annotation.dart';

part 'w_floating_daangn_button.state.freezed.dart';

// flutter pub run build_runner build
@freezed
class FloatingButtonState with _$FloatingButtonState {
  const factory FloatingButtonState(final bool isExpanded, final bool isSmall) = _FloatingButtonState;
}
