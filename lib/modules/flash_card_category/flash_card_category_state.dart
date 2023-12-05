import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flash_cards/modules/flash_card_category/flash_card_category_model.dart';

part 'flash_card_category_state.freezed.dart';
part 'flash_card_category_state.g.dart';

@freezed
class FlashCardCategoryState with _$FlashCardCategoryState {
  const factory FlashCardCategoryState({
    @Default(false) bool isLoading,
    @Default([]) List<FlashCardCategoryModel> categories,
  }) = _FlashCardCategoryState;

  factory FlashCardCategoryState.fromJson(Map<String, Object?> json) =>
      _$FlashCardCategoryStateFromJson(json);
}
