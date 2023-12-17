// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLessonDbCollection on Isar {
  IsarCollection<LessonDb> get lessonDbs => this.collection();
}

final LessonDbSchema = CollectionSchema(
  name: r'FlashCardCategoryItems',
  id: BigInt.parse("-6611360001513552200").toInt(),
  properties: {
    r'information': PropertySchema(
      id: BigInt.parse("0").toInt(),
      name: r'information',
      type: IsarType.string,
    ),
    r'isRecent': PropertySchema(
      id: BigInt.parse("1").toInt(),
      name: r'isRecent',
      type: IsarType.bool,
    ),
    r'lastCardIndex': PropertySchema(
      id: BigInt.parse("2").toInt(),
      name: r'lastCardIndex',
      type: IsarType.long,
    ),
    r'lastUpdate': PropertySchema(
      id: BigInt.parse("3").toInt(),
      name: r'lastUpdate',
      type: IsarType.dateTime,
    ),
    r'title': PropertySchema(
      id: BigInt.parse("4").toInt(),
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _lessonDbEstimateSize,
  serialize: _lessonDbSerialize,
  deserialize: _lessonDbDeserialize,
  deserializeProp: _lessonDbDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _lessonDbGetId,
  getLinks: _lessonDbGetLinks,
  attach: _lessonDbAttach,
  version: '3.1.0',
);

int _lessonDbEstimateSize(
  LessonDb object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.information.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _lessonDbSerialize(
  LessonDb object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.information);
  writer.writeBool(offsets[1], object.isRecent);
  writer.writeLong(offsets[2], object.lastCardIndex);
  writer.writeDateTime(offsets[3], object.lastUpdate);
  writer.writeString(offsets[4], object.title);
}

LessonDb _lessonDbDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LessonDb();
  object.id = id;
  object.information = reader.readString(offsets[0]);
  object.isRecent = reader.readBool(offsets[1]);
  object.lastCardIndex = reader.readLong(offsets[2]);
  object.lastUpdate = reader.readDateTime(offsets[3]);
  object.title = reader.readString(offsets[4]);
  return object;
}

P _lessonDbDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _lessonDbGetId(LessonDb object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _lessonDbGetLinks(LessonDb object) {
  return [];
}

void _lessonDbAttach(IsarCollection<dynamic> col, Id id, LessonDb object) {
  object.id = id;
}

extension LessonDbQueryWhereSort on QueryBuilder<LessonDb, LessonDb, QWhere> {
  QueryBuilder<LessonDb, LessonDb, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LessonDbQueryWhere on QueryBuilder<LessonDb, LessonDb, QWhereClause> {
  QueryBuilder<LessonDb, LessonDb, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LessonDbQueryFilter
    on QueryBuilder<LessonDb, LessonDb, QFilterCondition> {
  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> informationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition>
      informationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> informationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> informationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'information',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> informationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> informationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> informationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> informationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'information',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> informationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'information',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition>
      informationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'information',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> isRecentEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isRecent',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> lastCardIndexEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastCardIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition>
      lastCardIndexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastCardIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> lastCardIndexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastCardIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> lastCardIndexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastCardIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> lastUpdateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUpdate',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> lastUpdateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUpdate',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> lastUpdateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUpdate',
        value: value,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> lastUpdateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUpdate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension LessonDbQueryObject
    on QueryBuilder<LessonDb, LessonDb, QFilterCondition> {}

extension LessonDbQueryLinks
    on QueryBuilder<LessonDb, LessonDb, QFilterCondition> {}

extension LessonDbQuerySortBy on QueryBuilder<LessonDb, LessonDb, QSortBy> {
  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByInformation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByInformationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.desc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByIsRecent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecent', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByIsRecentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecent', Sort.desc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByLastCardIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastCardIndex', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByLastCardIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastCardIndex', Sort.desc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByLastUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdate', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByLastUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdate', Sort.desc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension LessonDbQuerySortThenBy
    on QueryBuilder<LessonDb, LessonDb, QSortThenBy> {
  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByInformation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByInformationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.desc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByIsRecent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecent', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByIsRecentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRecent', Sort.desc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByLastCardIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastCardIndex', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByLastCardIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastCardIndex', Sort.desc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByLastUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdate', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByLastUpdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUpdate', Sort.desc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension LessonDbQueryWhereDistinct
    on QueryBuilder<LessonDb, LessonDb, QDistinct> {
  QueryBuilder<LessonDb, LessonDb, QDistinct> distinctByInformation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'information', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LessonDb, LessonDb, QDistinct> distinctByIsRecent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isRecent');
    });
  }

  QueryBuilder<LessonDb, LessonDb, QDistinct> distinctByLastCardIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastCardIndex');
    });
  }

  QueryBuilder<LessonDb, LessonDb, QDistinct> distinctByLastUpdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUpdate');
    });
  }

  QueryBuilder<LessonDb, LessonDb, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension LessonDbQueryProperty
    on QueryBuilder<LessonDb, LessonDb, QQueryProperty> {
  QueryBuilder<LessonDb, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LessonDb, String, QQueryOperations> informationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'information');
    });
  }

  QueryBuilder<LessonDb, bool, QQueryOperations> isRecentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isRecent');
    });
  }

  QueryBuilder<LessonDb, int, QQueryOperations> lastCardIndexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastCardIndex');
    });
  }

  QueryBuilder<LessonDb, DateTime, QQueryOperations> lastUpdateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUpdate');
    });
  }

  QueryBuilder<LessonDb, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFlashCardDbCollection on Isar {
  IsarCollection<FlashCardDb> get flashCardDbs => this.collection();
}

final FlashCardDbSchema = CollectionSchema(
  name: r'FlashCardItems',
  id: BigInt.parse("4546939369290773486").toInt(),
  properties: {
    r'backText': PropertySchema(
      id: BigInt.parse("0").toInt(),
      name: r'backText',
      type: IsarType.string,
    ),
    r'categoryIds': PropertySchema(
      id: BigInt.parse("1").toInt(),
      name: r'categoryIds',
      type: IsarType.longList,
    ),
    r'frontText': PropertySchema(
      id: BigInt.parse("2").toInt(),
      name: r'frontText',
      type: IsarType.string,
    ),
    r'information': PropertySchema(
      id: BigInt.parse("3").toInt(),
      name: r'information',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: BigInt.parse("4").toInt(),
      name: r'status',
      type: IsarType.byte,
      enumMap: _FlashCardDbstatusEnumValueMap,
    )
  },
  estimateSize: _flashCardDbEstimateSize,
  serialize: _flashCardDbSerialize,
  deserialize: _flashCardDbDeserialize,
  deserializeProp: _flashCardDbDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _flashCardDbGetId,
  getLinks: _flashCardDbGetLinks,
  attach: _flashCardDbAttach,
  version: '3.1.0',
);

int _flashCardDbEstimateSize(
  FlashCardDb object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.backText;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.categoryIds;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.frontText;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.information;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _flashCardDbSerialize(
  FlashCardDb object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.backText);
  writer.writeLongList(offsets[1], object.categoryIds);
  writer.writeString(offsets[2], object.frontText);
  writer.writeString(offsets[3], object.information);
  writer.writeByte(offsets[4], object.status.index);
}

FlashCardDb _flashCardDbDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashCardDb();
  object.backText = reader.readStringOrNull(offsets[0]);
  object.categoryIds = reader.readLongList(offsets[1]);
  object.frontText = reader.readStringOrNull(offsets[2]);
  object.id = id;
  object.information = reader.readStringOrNull(offsets[3]);
  object.status =
      _FlashCardDbstatusValueEnumMap[reader.readByteOrNull(offsets[4])] ??
          FlashCardStatus.unknown;
  return object;
}

P _flashCardDbDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongList(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (_FlashCardDbstatusValueEnumMap[reader.readByteOrNull(offset)] ??
          FlashCardStatus.unknown) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _FlashCardDbstatusEnumValueMap = {
  'unknown': 0,
  'success': 1,
  'failure': 2,
};
const _FlashCardDbstatusValueEnumMap = {
  0: FlashCardStatus.unknown,
  1: FlashCardStatus.success,
  2: FlashCardStatus.failure,
};

Id _flashCardDbGetId(FlashCardDb object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _flashCardDbGetLinks(FlashCardDb object) {
  return [];
}

void _flashCardDbAttach(
    IsarCollection<dynamic> col, Id id, FlashCardDb object) {
  object.id = id;
}

extension FlashCardDbQueryWhereSort
    on QueryBuilder<FlashCardDb, FlashCardDb, QWhere> {
  QueryBuilder<FlashCardDb, FlashCardDb, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FlashCardDbQueryWhere
    on QueryBuilder<FlashCardDb, FlashCardDb, QWhereClause> {
  QueryBuilder<FlashCardDb, FlashCardDb, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FlashCardDbQueryFilter
    on QueryBuilder<FlashCardDb, FlashCardDb, QFilterCondition> {
  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      backTextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'backText',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      backTextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'backText',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> backTextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      backTextGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      backTextLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> backTextBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      backTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'backText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      backTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'backText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      backTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'backText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> backTextMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'backText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      backTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backText',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      backTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'backText',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryIds',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryIds',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryIds',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryIds',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryIds',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoryIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoryIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoryIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoryIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoryIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      categoryIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categoryIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'frontText',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'frontText',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frontText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frontText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frontText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'frontText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'frontText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'frontText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'frontText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frontText',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      frontTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'frontText',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'information',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'information',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'information',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'information',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'information',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      informationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'information',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> statusEqualTo(
      FlashCardStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition>
      statusGreaterThan(
    FlashCardStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> statusLessThan(
    FlashCardStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterFilterCondition> statusBetween(
    FlashCardStatus lower,
    FlashCardStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FlashCardDbQueryObject
    on QueryBuilder<FlashCardDb, FlashCardDb, QFilterCondition> {}

extension FlashCardDbQueryLinks
    on QueryBuilder<FlashCardDb, FlashCardDb, QFilterCondition> {}

extension FlashCardDbQuerySortBy
    on QueryBuilder<FlashCardDb, FlashCardDb, QSortBy> {
  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> sortByBackText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backText', Sort.asc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> sortByBackTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backText', Sort.desc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> sortByFrontText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frontText', Sort.asc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> sortByFrontTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frontText', Sort.desc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> sortByInformation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.asc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> sortByInformationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.desc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension FlashCardDbQuerySortThenBy
    on QueryBuilder<FlashCardDb, FlashCardDb, QSortThenBy> {
  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenByBackText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backText', Sort.asc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenByBackTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backText', Sort.desc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenByFrontText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frontText', Sort.asc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenByFrontTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frontText', Sort.desc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenByInformation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.asc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenByInformationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.desc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension FlashCardDbQueryWhereDistinct
    on QueryBuilder<FlashCardDb, FlashCardDb, QDistinct> {
  QueryBuilder<FlashCardDb, FlashCardDb, QDistinct> distinctByBackText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QDistinct> distinctByCategoryIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryIds');
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QDistinct> distinctByFrontText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frontText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QDistinct> distinctByInformation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'information', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashCardDb, FlashCardDb, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }
}

extension FlashCardDbQueryProperty
    on QueryBuilder<FlashCardDb, FlashCardDb, QQueryProperty> {
  QueryBuilder<FlashCardDb, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FlashCardDb, String?, QQueryOperations> backTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backText');
    });
  }

  QueryBuilder<FlashCardDb, List<int>?, QQueryOperations>
      categoryIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryIds');
    });
  }

  QueryBuilder<FlashCardDb, String?, QQueryOperations> frontTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frontText');
    });
  }

  QueryBuilder<FlashCardDb, String?, QQueryOperations> informationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'information');
    });
  }

  QueryBuilder<FlashCardDb, FlashCardStatus, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
