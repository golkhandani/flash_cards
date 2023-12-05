// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFlashCardCategoryDbCollection on Isar {
  IsarCollection<FlashCardCategoryDb> get flashCardCategoryDbs =>
      this.collection();
}

const FlashCardCategoryDbSchema = CollectionSchema(
  name: r'FlashCardCategoryItems',
  id: -6611360001513552200,
  properties: {
    r'information': PropertySchema(
      id: 0,
      name: r'information',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 1,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _flashCardCategoryDbEstimateSize,
  serialize: _flashCardCategoryDbSerialize,
  deserialize: _flashCardCategoryDbDeserialize,
  deserializeProp: _flashCardCategoryDbDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _flashCardCategoryDbGetId,
  getLinks: _flashCardCategoryDbGetLinks,
  attach: _flashCardCategoryDbAttach,
  version: '3.1.0+1',
);

int _flashCardCategoryDbEstimateSize(
  FlashCardCategoryDb object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.information;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _flashCardCategoryDbSerialize(
  FlashCardCategoryDb object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.information);
  writer.writeString(offsets[1], object.title);
}

FlashCardCategoryDb _flashCardCategoryDbDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashCardCategoryDb();
  object.id = id;
  object.information = reader.readStringOrNull(offsets[0]);
  object.title = reader.readStringOrNull(offsets[1]);
  return object;
}

P _flashCardCategoryDbDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _flashCardCategoryDbGetId(FlashCardCategoryDb object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _flashCardCategoryDbGetLinks(
    FlashCardCategoryDb object) {
  return [];
}

void _flashCardCategoryDbAttach(
    IsarCollection<dynamic> col, Id id, FlashCardCategoryDb object) {
  object.id = id;
}

extension FlashCardCategoryDbQueryWhereSort
    on QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QWhere> {
  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FlashCardCategoryDbQueryWhere
    on QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QWhereClause> {
  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterWhereClause>
      idBetween(
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

extension FlashCardCategoryDbQueryFilter on QueryBuilder<FlashCardCategoryDb,
    FlashCardCategoryDb, QFilterCondition> {
  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      informationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'information',
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      informationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'information',
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      informationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'information',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      informationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'information',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      informationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'information',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      informationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'information',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleEqualTo(
    String? value, {
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleLessThan(
    String? value, {
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleStartsWith(
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleEndsWith(
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

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension FlashCardCategoryDbQueryObject on QueryBuilder<FlashCardCategoryDb,
    FlashCardCategoryDb, QFilterCondition> {}

extension FlashCardCategoryDbQueryLinks on QueryBuilder<FlashCardCategoryDb,
    FlashCardCategoryDb, QFilterCondition> {}

extension FlashCardCategoryDbQuerySortBy
    on QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QSortBy> {
  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      sortByInformation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      sortByInformationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension FlashCardCategoryDbQuerySortThenBy
    on QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QSortThenBy> {
  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      thenByInformation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      thenByInformationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'information', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QAfterSortBy>
      thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension FlashCardCategoryDbQueryWhereDistinct
    on QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QDistinct> {
  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QDistinct>
      distinctByInformation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'information', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QDistinct>
      distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension FlashCardCategoryDbQueryProperty
    on QueryBuilder<FlashCardCategoryDb, FlashCardCategoryDb, QQueryProperty> {
  QueryBuilder<FlashCardCategoryDb, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FlashCardCategoryDb, String?, QQueryOperations>
      informationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'information');
    });
  }

  QueryBuilder<FlashCardCategoryDb, String?, QQueryOperations> titleProperty() {
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

const FlashCardDbSchema = CollectionSchema(
  name: r'FlashCardItems',
  id: 4546939369290773486,
  properties: {
    r'backText': PropertySchema(
      id: 0,
      name: r'backText',
      type: IsarType.string,
    ),
    r'categoryIds': PropertySchema(
      id: 1,
      name: r'categoryIds',
      type: IsarType.longList,
    ),
    r'frontText': PropertySchema(
      id: 2,
      name: r'frontText',
      type: IsarType.string,
    ),
    r'information': PropertySchema(
      id: 3,
      name: r'information',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 4,
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
  version: '3.1.0+1',
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
