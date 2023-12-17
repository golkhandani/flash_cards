import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:word_wise_flash_cards/core/database/flash_card_collection.dart';
import 'package:word_wise_flash_cards/core/state_manager.dart';
import 'package:word_wise_flash_cards/main.dart';
import 'package:word_wise_flash_cards/modules/flash_card_list/data/flash_card_data.dart';
import 'package:word_wise_flash_cards/modules/lesson_list/data/lesson_data.dart';

part 'home_state_manager.freezed.dart';
part 'home_state_manager.g.dart';

@freezed
class HomeState extends VsmModel with _$HomeState {
  const factory HomeState({
    LessonData? flashCardCategory,
    List<FlashCardData>? flashCards,
    @Default(false) bool isLoading,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, Object?> json) =>
      _$HomeStateFromJson(json);
}

class HomeController extends VsmController<HomeState> {
  final isar = getIt.get<Isar>();
  late final flashCardsCollection = isar.collection<FlashCardDb>();
  late final flashCardCategoryCollection = isar.collection<LessonDb>();

  HomeController() : super(const HomeState());
  Future<void> loadData() async {
    notify(value.copyWith(isLoading: true));

    final category = await flashCardCategoryCollection
        .where()
        .sortByLastUpdateDesc()
        .findFirst();

    if (category != null) {
      final cardCounts = await flashCardsCollection
          .where()
          .filter()
          .categoryIdsElementEqualTo(category.id)
          .count();
      final cards = await flashCardsCollection
          .where()
          .filter()
          .categoryIdsElementEqualTo(category.id)
          .offset(min(category.lastCardIndex, cardCounts - 2))
          .limit(2)
          .findAll();
      notify(
        value.copyWith(
          isLoading: false,
          flashCardCategory: LessonData.fromDb(category),
          flashCards: cards.map((e) => FlashCardData.fromDb(e)).toList(),
        ),
      );
    }
  }
}
