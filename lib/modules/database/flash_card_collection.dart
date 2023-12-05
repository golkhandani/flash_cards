import 'package:isar/isar.dart';

part 'flash_card_collection.g.dart';

enum FlashCardStatus { unknown, success, failure }

@collection
@Name("FlashCardCategoryItems")
class FlashCardCategoryDb {
  Id id = Isar.autoIncrement;

  String? title;

  String? information;

  static FlashCardCategoryDb fromJson(Map<String, dynamic> json) {
    final converted = FlashCardCategoryDb()
      ..id = json['id'] as int
      ..title = json['title'] as String
      ..information = json['information'] as String;

    return converted;
  }
}

@collection
@Name("FlashCardItems")
class FlashCardDb {
  Id id = Isar.autoIncrement;

  String? frontText;

  String? backText;

  String? information;

  List<int>? categoryIds;

  @enumerated
  FlashCardStatus status = FlashCardStatus.unknown;

  static FlashCardDb fromJson(Map<String, dynamic> json) {
    final converted = FlashCardDb()
      ..id = json['id'] as int
      ..frontText = json['frontText'] as String
      ..backText = json['backText'] as String
      ..information = json['information'] as String
      ..categoryIds = [json['categoryId'] as int]
      ..status = FlashCardStatus.unknown;

    return converted;
  }
}
