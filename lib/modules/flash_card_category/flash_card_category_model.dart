import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flash_cards/modules/database/flash_card_collection.dart';

part 'flash_card_category_model.freezed.dart';
part 'flash_card_category_model.g.dart';

@freezed
class FlashCardCategoryModel with _$FlashCardCategoryModel {
  const factory FlashCardCategoryModel({
    required String id,
    required String title,
    required String information,
    required bool isRecent,
    required int lastCardIndex,
    required DateTime lastUpdate,
  }) = _FlashCardCategoryModel;

  factory FlashCardCategoryModel.fromDb(FlashCardCategoryDb db) =>
      FlashCardCategoryModel(
        id: db.id.toString(),
        title: db.title,
        information: db.information,
        isRecent: db.isRecent,
        lastCardIndex: db.lastCardIndex,
        lastUpdate: db.lastUpdate,
      );

  factory FlashCardCategoryModel.fromJson(Map<String, Object?> json) =>
      _$FlashCardCategoryModelFromJson(json);
}
