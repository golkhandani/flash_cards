import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:flash_cards/core/state_manager.dart';
import 'package:flash_cards/main.dart';
import 'package:flash_cards/modules/database/flash_card_collection.dart';
import 'package:flash_cards/modules/flash_card_category/data/flash_card_category_data.dart';

part 'flash_card_categories_state_manager.freezed.dart';
part 'flash_card_categories_state_manager.g.dart';

@freezed
class FlashCardCategoryState extends ValueStateModel
    with _$FlashCardCategoryState {
  const factory FlashCardCategoryState({
    @Default(false) bool isLoading,
    @Default([]) List<FlashCardCategoryData> categories,
  }) = _FlashCardCategoryState;

  factory FlashCardCategoryState.fromJson(Map<String, Object?> json) =>
      _$FlashCardCategoryStateFromJson(json);
}

class FlashCardCategoriesController
    extends ValueStateController<FlashCardCategoryState> {
  final _isar = getIt.get<Isar>();
  late final categoriesCollection = _isar.collection<FlashCardCategoryDb>();
  FlashCardCategoriesController() : super(const FlashCardCategoryState());

  Future<void> loadData() async {
    notify(currentState.copyWith(isLoading: true));
    final allCategories =
        (await categoriesCollection.where().findAll()).toList();

    notify(currentState.copyWith(
      isLoading: false,
      categories: allCategories
          .map((e) => FlashCardCategoryData(
                id: e.id.toString(),
                title: e.title,
                information: e.information,
                isRecent: true,
                lastCardIndex: 0,
                lastUpdate: DateTime.now(),
              ))
          .toList(),
    ));
  }
}
