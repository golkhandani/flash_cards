import 'package:flutter/material.dart';

import 'package:isar/isar.dart';

import 'package:flash_cards/main.dart';
import 'package:flash_cards/modules/database/flash_card_collection.dart';
import 'package:flash_cards/modules/flash_card_list/flash_card_list_state.dart';
import 'package:flash_cards/modules/flash_card_list/flash_card_model.dart';

mixin FlashCardListLogicMixin {
  final ValueNotifier<FlashCardListState> listState =
      ValueNotifier(const FlashCardListState());

  FlashCardListState get currentState => listState.value;
  set _currentState(FlashCardListState updatedState) =>
      listState.value = updatedState;

  Future<void> loadData(String categoryId) async {
    _currentState = currentState.copyWith(isLoading: true);
    final isar = getIt.get<Isar>();
    final flashCardsCollection = isar.collection<FlashCardDb>();
    final allFlashCards = await flashCardsCollection
        .filter()
        .categoryIdsElementEqualTo(int.tryParse(categoryId) ?? 0)
        .findAll();
    await Future.delayed(const Duration(seconds: 1));
    _currentState = listState.value.copyWith(
      isLoading: false,
      initialIndex: 0,
      categoryId: categoryId,
      flashCards: allFlashCards
          .map(
            (e) => FlashCardModel(
              id: e.id.toString(),
              frontText: e.frontText ?? '',
              backText: e.backText ?? '',
              information: e.information ?? '',
              categoryId: e.categoryIds?.first.toString() ?? '',
            ),
          )
          .toList(),
    );
    return;
  }

  void updateCurrentIndex(int index) {
    _currentState = currentState.copyWith(currentIndex: index);
  }
}
