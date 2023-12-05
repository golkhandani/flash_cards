import 'package:freezed_annotation/freezed_annotation.dart';

part 'flash_card_category_model.freezed.dart';
part 'flash_card_category_model.g.dart';

@freezed
class FlashCardCategoryModel with _$FlashCardCategoryModel {
  const factory FlashCardCategoryModel({
    required String id,
    required String title,
    required String information,
  }) = _FlashCardCategoryModel;

  factory FlashCardCategoryModel.fromJson(Map<String, Object?> json) =>
      _$FlashCardCategoryModelFromJson(json);
}
