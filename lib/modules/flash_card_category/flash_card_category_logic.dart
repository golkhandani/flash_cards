import 'package:flutter/material.dart';

import 'package:isar/isar.dart';

import 'package:flash_cards/main.dart';
import 'package:flash_cards/modules/database/flash_card_collection.dart';
import 'package:flash_cards/modules/flash_card_category/flash_card_category_model.dart';
import 'package:flash_cards/modules/flash_card_category/flash_card_category_state.dart';

mixin FlashCardCategoriesLogicMixin {
  final ValueNotifier<FlashCardCategoryState> categoriesState =
      ValueNotifier(const FlashCardCategoryState());

  FlashCardCategoryState get currentState => categoriesState.value;
  set currentState(FlashCardCategoryState updatedState) =>
      categoriesState.value = updatedState;

  Future<void> loadData() async {
    currentState = currentState.copyWith(isLoading: true);
    final isar = getIt.get<Isar>();
    final categoriesCollection = isar.collection<FlashCardCategoryDb>();
    final allCategories = await categoriesCollection.where().findAll();

    await Future.delayed(const Duration(seconds: 1));
    currentState = categoriesState.value.copyWith(
      isLoading: false,
      categories: allCategories
          .map((e) => FlashCardCategoryModel(
                id: e.id.toString(),
                title: e.title ?? '',
                information: e.information ?? '',
              ))
          .toList(),
    );
    return;
  }
}
