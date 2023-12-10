import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:flash_cards/core/state_manager.dart';
import 'package:flash_cards/main.dart';
import 'package:flash_cards/modules/database/flash_card_collection.dart';
import 'package:flash_cards/modules/flash_card_category/data/flash_card_category_data.dart';
import 'package:flash_cards/modules/flash_card_list/data/flash_card_data.dart';
import 'package:flash_cards/modules/home/state_manager/home_state_manager.dart';

part 'flash_card_list_state_manager.freezed.dart';
part 'flash_card_list_state_manager.g.dart';

@freezed
class FlashCardListState extends ValueStateModel with _$FlashCardListState {
  const factory FlashCardListState({
    FlashCardCategoryData? category,
    @Default(false) bool isLoading,
    @Default([]) List<FlashCardData> flashCards,
    @Default(0) int initialIndex,
    @Default(0) int currentIndex,
  }) = _FlashCardListState;

  factory FlashCardListState.fromJson(Map<String, Object?> json) =>
      _$FlashCardListStateFromJson(json);
}

class FlashCardListLogic extends ValueStateController<FlashCardListState> {
  final _isar = getIt.get<Isar>();
  late final _flashCardsCollection = _isar.collection<FlashCardDb>();
  late final _flashCardCategoryCollection =
      _isar.collection<FlashCardCategoryDb>();
  late final _homeLogic = ValueState.getController<HomeLogic>();

  FlashCardListLogic() : super(const FlashCardListState());
  Future<void> loadData(String categoryId) async {
    notify(currentState.copyWith(isLoading: true));

    final category =
        await _flashCardCategoryCollection.get(int.tryParse(categoryId) ?? -1);

    if (category == null) {
      return;
    }

    final allFlashCards = await _flashCardsCollection
        .filter()
        .categoryIdsElementEqualTo(int.tryParse(categoryId) ?? 0)
        .findAll();
    notify(
      currentState.copyWith(
        isLoading: false,
        initialIndex: category.lastCardIndex.clamp(0, allFlashCards.length - 1),
        currentIndex: category.lastCardIndex,
        category: FlashCardCategoryData.fromDb(category),
        flashCards: allFlashCards
            .map(
              (e) => FlashCardData(
                id: e.id.toString(),
                frontText: e.frontText ?? '',
                backText: e.backText ?? '',
                information: e.information ?? '',
                categoryId: e.categoryIds?.first.toString() ?? '',
              ),
            )
            .toList(),
      ),
    );
    return;
  }

  Future<void> updateCurrentIndex(int index) async {
    notify(currentState.copyWith(
      currentIndex: index,
      initialIndex: index.clamp(0, currentState.flashCards.length - 1),
    ));

    await _isar.writeTxn(() async {
      final category = await _flashCardCategoryCollection
          .get(int.parse(currentState.category!.id));
      if (category == null) {
        return;
      }
      category.isRecent = true;
      category.lastCardIndex = index;
      category.lastUpdate = DateTime.now();
      await _flashCardCategoryCollection.put(category);
      notify(
        currentState.copyWith(
          category: FlashCardCategoryData.fromDb(category),
        ),
      );
    });
    await _homeLogic.loadData();
  }
}
