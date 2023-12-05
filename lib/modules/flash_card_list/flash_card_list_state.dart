import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:flash_cards/main.dart';
import 'package:flash_cards/modules/database/flash_card_collection.dart';
import 'package:flash_cards/modules/flash_card_list/flash_card_model.dart';

part 'flash_card_list_state.freezed.dart';
part 'flash_card_list_state.g.dart';

abstract class AppState {}

abstract class AppLogic<S extends AppState> {
  late final ValueNotifier<S> notifier;
  S get currentState => notifier.value;
  void emit(S state) => notifier.value = state;
}

class AppStateLogic<L extends AppLogic<S>, S extends AppState>
    extends StatefulWidget {
  const AppStateLogic({
    required this.logic,
    required this.state,
    required this.builder,
    super.key,
  });

  final L logic;
  final S state;
  final Widget Function(BuildContext, L, S, void Function(S)) builder;

  @override
  State<AppStateLogic<L, S>> createState() => _AppStateLogicState<L, S>();
}

class _AppStateLogicState<L extends AppLogic<S>, S extends AppState>
    extends State<AppStateLogic<L, S>> {
  @override
  void initState() {
    widget.logic.notifier = ValueNotifier(widget.state);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.logic.notifier,
      builder: (context, value, child) {
        return widget.builder(
          context,
          widget.logic,
          value,
          widget.logic.emit,
        );
      },
    );
  }
}

class FlashCardListLogic extends AppLogic<FlashCardListState> {
  Future<void> loadData(String categoryId) async {
    emit(currentState.copyWith(isLoading: true));
    final isar = getIt.get<Isar>();
    final flashCardsCollection = isar.collection<FlashCardDb>();
    final allFlashCards = await flashCardsCollection
        .filter()
        .categoryIdsElementEqualTo(int.tryParse(categoryId) ?? 0)
        .findAll();
    await Future.delayed(const Duration(seconds: 1));
    emit(currentState.copyWith(
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
    ));
    return;
  }

  void updateCurrentIndex(int index) {
    emit(currentState.copyWith(currentIndex: index));
  }
}

@freezed
class FlashCardListState extends AppState with _$FlashCardListState {
  const factory FlashCardListState({
    String? categoryId,
    @Default(false) bool isLoading,
    @Default([]) List<FlashCardModel> flashCards,
    @Default(0) int initialIndex,
    @Default(0) int currentIndex,
  }) = _FlashCardListState;

  factory FlashCardListState.fromJson(Map<String, Object?> json) =>
      _$FlashCardListStateFromJson(json);
}
