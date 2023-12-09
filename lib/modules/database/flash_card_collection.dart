import 'package:isar/isar.dart';

part 'flash_card_collection.g.dart';

enum FlashCardStatus { unknown, success, failure }

@collection
@Name("FlashCardCategoryItems")
class FlashCardCategoryDb {
  Id id = Isar.autoIncrement;
  late String title;
  late String information;
  late bool isRecent;
  late int lastCardIndex = 0;
  late DateTime lastUpdate = DateTime.now();

  static FlashCardCategoryDb fromJson(Map<String, dynamic> json) {
    final converted = FlashCardCategoryDb()
      ..id = json['id'] as int
      ..title = json['title'] as String
      ..information = json['information'] as String
      ..isRecent = (json['isRecent'] ?? false) as bool
      ..lastCardIndex = (json['lastCardIndex'] ?? 0) as int
      ..information = (json['information'] ?? DateTime.now()) as String;

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
      // ..id = json['id'] as int
      ..frontText = json['frontText'] as String
      ..backText = json['backText'] as String
      ..information = (json['information'] ?? '') as String
      ..categoryIds = [(json['categoryId'] ?? 1) as int]
      ..status = FlashCardStatus.unknown;

    return converted;
  }
}
