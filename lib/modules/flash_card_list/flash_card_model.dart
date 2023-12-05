import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flash_cards/modules/database/flash_card_collection.dart';

part 'flash_card_model.freezed.dart';
part 'flash_card_model.g.dart';

@freezed
class FlashCardModel with _$FlashCardModel {
  const factory FlashCardModel({
    required String id,
    required String frontText,
    required String backText,
    // statics
    required String information,
    required String categoryId,
    @Default(FlashCardStatus.unknown) FlashCardStatus status,
  }) = _FlashCardModel;

  factory FlashCardModel.fromDb(FlashCardDb e) => FlashCardModel(
        id: e.id.toString(),
        frontText: e.frontText ?? '',
        backText: e.backText ?? '',
        information: e.information ?? '',
        categoryId: e.categoryIds.toString(),
      );

  factory FlashCardModel.fromJson(Map<String, Object?> json) =>
      _$FlashCardModelFromJson(json);
}
