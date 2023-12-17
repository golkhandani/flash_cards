import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import 'package:word_wise_flash_cards/core/database/flash_card_collection.dart';
import 'package:word_wise_flash_cards/core/state_manager.dart';
import 'package:word_wise_flash_cards/main.dart';
import 'package:word_wise_flash_cards/modules/lesson_list/data/lesson_data.dart';

part 'lesson_list_state_manager.freezed.dart';
part 'lesson_list_state_manager.g.dart';

@freezed
class LessonListState extends VsmModel with _$LessonListState {
  const factory LessonListState({
    @Default(false) bool isLoading,
    @Default([]) List<LessonData> allCategories,
    @Default([]) List<LessonData> filteredCategories,
  }) = _LessonListState;

  factory LessonListState.fromJson(Map<String, Object?> json) =>
      _$LessonListStateFromJson(json);
}

class LessonListController extends VsmController<LessonListState> {
  final _isar = getIt.get<Isar>();
  late final categoriesCollection = _isar.collection<LessonDb>();
  LessonListController() : super(const LessonListState());

  Future<void> filter(String str) async {
    notify(value.copyWith(
      filteredCategories: value.allCategories
          .where((element) =>
              element.title.toLowerCase().contains(str.toLowerCase()))
          .toList(),
    ));
  }

  Future<void> loadData() async {
    notify(value.copyWith(isLoading: true));
    final categories = (await categoriesCollection.where().findAll()).toList();

    final allCategories = categories
        .map((e) => LessonData(
              id: e.id.toString(),
              title: e.title,
              information: e.information,
              isRecent: true,
              lastCardIndex: 0,
              lastUpdate: DateTime.now(),
            ))
        .toList();

    notify(value.copyWith(
      isLoading: false,
      allCategories: allCategories,
      filteredCategories: allCategories,
    ));
  }
}
