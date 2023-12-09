import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:flash_cards/core/state_manager.dart';
import 'package:flash_cards/main.dart';
import 'package:flash_cards/modules/database/flash_card_collection.dart';
import 'package:flash_cards/modules/flash_card_category/flash_card_category_model.dart';
import 'package:flash_cards/modules/flash_card_list/data/flash_card_data.dart';

part 'home_state_manager.freezed.dart';
part 'home_state_manager.g.dart';

@freezed
class HomeState extends ValueStateModel with _$HomeState {
  const factory HomeState({
    FlashCardCategoryModel? flashCardCategory,
    List<FlashCardData>? flashCards,
    @Default(false) bool isLoading,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, Object?> json) =>
      _$HomeStateFromJson(json);
}

class HomeLogic extends ValueStateController<HomeState> {
  final isar = getIt.get<Isar>();
  late final flashCardsCollection = isar.collection<FlashCardDb>();
  late final flashCardCategoryCollection =
      isar.collection<FlashCardCategoryDb>();

  HomeLogic() : super(const HomeState());
  Future<void> loadData() async {
    notify(currentState.copyWith(isLoading: true));

    final category = await flashCardCategoryCollection
        .where()
        .sortByLastUpdateDesc()
        .findFirst();

    print("EQWEQWE -> ${category?.title}");

    if (category != null) {
      final cards = await flashCardsCollection
          .where()
          .filter()
          .categoryIdsElementEqualTo(category.id)
          .offset(category.lastCardIndex)
          .limit(2)
          .findAll();
      notify(
        currentState.copyWith(
          isLoading: false,
          flashCardCategory: FlashCardCategoryModel.fromDb(category),
          flashCards: cards.map((e) => FlashCardData.fromDb(e)).toList(),
        ),
      );
    }
  }
}
