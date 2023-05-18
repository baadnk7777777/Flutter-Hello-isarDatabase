// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMessageCollection on Isar {
  IsarCollection<Message> get messages => this.collection();
}

const MessageSchema = CollectionSchema(
  name: r'Message',
  id: 2463283977299753079,
  properties: {
    r'chat_id': PropertySchema(
      id: 0,
      name: r'chat_id',
      type: IsarType.string,
    ),
    r'content': PropertySchema(
      id: 1,
      name: r'content',
      type: IsarType.string,
    ),
    r'create_at': PropertySchema(
      id: 2,
      name: r'create_at',
      type: IsarType.string,
    ),
    r'message_type': PropertySchema(
      id: 3,
      name: r'message_type',
      type: IsarType.string,
    ),
    r'read_timestamp': PropertySchema(
      id: 4,
      name: r'read_timestamp',
      type: IsarType.string,
    ),
    r'send_timestamp': PropertySchema(
      id: 5,
      name: r'send_timestamp',
      type: IsarType.string,
    ),
    r'sender_id': PropertySchema(
      id: 6,
      name: r'sender_id',
      type: IsarType.string,
    ),
    r'timestamp': PropertySchema(
      id: 7,
      name: r'timestamp',
      type: IsarType.string,
    )
  },
  estimateSize: _messageEstimateSize,
  serialize: _messageSerialize,
  deserialize: _messageDeserialize,
  deserializeProp: _messageDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _messageGetId,
  getLinks: _messageGetLinks,
  attach: _messageAttach,
  version: '3.1.0+1',
);

int _messageEstimateSize(
  Message object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.chat_id.length * 3;
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.create_at.length * 3;
  bytesCount += 3 + object.message_type.length * 3;
  bytesCount += 3 + object.read_timestamp.length * 3;
  bytesCount += 3 + object.send_timestamp.length * 3;
  bytesCount += 3 + object.sender_id.length * 3;
  bytesCount += 3 + object.timestamp.length * 3;
  return bytesCount;
}

void _messageSerialize(
  Message object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.chat_id);
  writer.writeString(offsets[1], object.content);
  writer.writeString(offsets[2], object.create_at);
  writer.writeString(offsets[3], object.message_type);
  writer.writeString(offsets[4], object.read_timestamp);
  writer.writeString(offsets[5], object.send_timestamp);
  writer.writeString(offsets[6], object.sender_id);
  writer.writeString(offsets[7], object.timestamp);
}

Message _messageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Message();
  object.chat_id = reader.readString(offsets[0]);
  object.content = reader.readString(offsets[1]);
  object.create_at = reader.readString(offsets[2]);
  object.id = id;
  object.message_type = reader.readString(offsets[3]);
  object.read_timestamp = reader.readString(offsets[4]);
  object.send_timestamp = reader.readString(offsets[5]);
  object.sender_id = reader.readString(offsets[6]);
  object.timestamp = reader.readString(offsets[7]);
  return object;
}

P _messageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _messageGetId(Message object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _messageGetLinks(Message object) {
  return [];
}

void _messageAttach(IsarCollection<dynamic> col, Id id, Message object) {
  object.id = id;
}

extension MessageQueryWhereSort on QueryBuilder<Message, Message, QWhere> {
  QueryBuilder<Message, Message, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MessageQueryWhere on QueryBuilder<Message, Message, QWhereClause> {
  QueryBuilder<Message, Message, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Message, Message, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Message, Message, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Message, Message, QAfterWhereClause> idBetween(
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

extension MessageQueryFilter
    on QueryBuilder<Message, Message, QFilterCondition> {
  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chat_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chat_id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chat_id',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> chat_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chat_id',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'create_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'create_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'create_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'create_at',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'create_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'create_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'create_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'create_at',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'create_at',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> create_atIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'create_at',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Message, Message, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Message, Message, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Message, Message, QAfterFilterCondition> message_typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> message_typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'message_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> message_typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'message_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> message_typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'message_type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> message_typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'message_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> message_typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'message_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> message_typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'message_type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> message_typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'message_type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> message_typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message_type',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition>
      message_typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'message_type',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> read_timestampEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'read_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition>
      read_timestampGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'read_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> read_timestampLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'read_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> read_timestampBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'read_timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition>
      read_timestampStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'read_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> read_timestampEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'read_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> read_timestampContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'read_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> read_timestampMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'read_timestamp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition>
      read_timestampIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'read_timestamp',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition>
      read_timestampIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'read_timestamp',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> send_timestampEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'send_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition>
      send_timestampGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'send_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> send_timestampLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'send_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> send_timestampBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'send_timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition>
      send_timestampStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'send_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> send_timestampEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'send_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> send_timestampContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'send_timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> send_timestampMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'send_timestamp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition>
      send_timestampIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'send_timestamp',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition>
      send_timestampIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'send_timestamp',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sender_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sender_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sender_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sender_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sender_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sender_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sender_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sender_id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sender_id',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> sender_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sender_id',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timestamp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timestamp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: '',
      ));
    });
  }

  QueryBuilder<Message, Message, QAfterFilterCondition> timestampIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timestamp',
        value: '',
      ));
    });
  }
}

extension MessageQueryObject
    on QueryBuilder<Message, Message, QFilterCondition> {}

extension MessageQueryLinks
    on QueryBuilder<Message, Message, QFilterCondition> {}

extension MessageQuerySortBy on QueryBuilder<Message, Message, QSortBy> {
  QueryBuilder<Message, Message, QAfterSortBy> sortByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByChat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByCreate_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'create_at', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByCreate_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'create_at', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByMessage_type() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message_type', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByMessage_typeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message_type', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByRead_timestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'read_timestamp', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByRead_timestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'read_timestamp', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortBySend_timestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'send_timestamp', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortBySend_timestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'send_timestamp', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortBySender_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sender_id', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortBySender_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sender_id', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension MessageQuerySortThenBy
    on QueryBuilder<Message, Message, QSortThenBy> {
  QueryBuilder<Message, Message, QAfterSortBy> thenByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByChat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByCreate_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'create_at', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByCreate_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'create_at', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByMessage_type() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message_type', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByMessage_typeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message_type', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByRead_timestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'read_timestamp', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByRead_timestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'read_timestamp', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenBySend_timestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'send_timestamp', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenBySend_timestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'send_timestamp', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenBySender_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sender_id', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenBySender_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sender_id', Sort.desc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<Message, Message, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension MessageQueryWhereDistinct
    on QueryBuilder<Message, Message, QDistinct> {
  QueryBuilder<Message, Message, QDistinct> distinctByChat_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chat_id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Message, Message, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Message, Message, QDistinct> distinctByCreate_at(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'create_at', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Message, Message, QDistinct> distinctByMessage_type(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'message_type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Message, Message, QDistinct> distinctByRead_timestamp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'read_timestamp',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Message, Message, QDistinct> distinctBySend_timestamp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'send_timestamp',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Message, Message, QDistinct> distinctBySender_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sender_id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Message, Message, QDistinct> distinctByTimestamp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp', caseSensitive: caseSensitive);
    });
  }
}

extension MessageQueryProperty
    on QueryBuilder<Message, Message, QQueryProperty> {
  QueryBuilder<Message, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Message, String, QQueryOperations> chat_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chat_id');
    });
  }

  QueryBuilder<Message, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<Message, String, QQueryOperations> create_atProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'create_at');
    });
  }

  QueryBuilder<Message, String, QQueryOperations> message_typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'message_type');
    });
  }

  QueryBuilder<Message, String, QQueryOperations> read_timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'read_timestamp');
    });
  }

  QueryBuilder<Message, String, QQueryOperations> send_timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'send_timestamp');
    });
  }

  QueryBuilder<Message, String, QQueryOperations> sender_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sender_id');
    });
  }

  QueryBuilder<Message, String, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }
}
