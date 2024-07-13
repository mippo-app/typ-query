///
//  Generated code. Do not modify.
//  source: typ_query/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'keyword.pb.dart' as $2;
import 'leveler.pb.dart' as $3;

enum Query_ValueOf {
  keyword, 
  queries, 
  notSet
}

class Query extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Query_ValueOf> _Query_ValueOfByTag = {
    3 : Query_ValueOf.keyword,
    4 : Query_ValueOf.queries,
    0 : Query_ValueOf.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Query', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'typ_query'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'searchType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetType')
    ..aOM<$2.Keyword>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyword', subBuilder: $2.Keyword.create)
    ..aOM<Queries>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queries', subBuilder: Queries.create)
    ..pc<$3.Leveler>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'levels', $pb.PbFieldType.PM, subBuilder: $3.Leveler.create)
    ..hasRequiredFields = false
  ;

  Query._() : super();
  factory Query({
    $core.String? searchType,
    $core.String? targetType,
    $2.Keyword? keyword,
    Queries? queries,
    $core.Iterable<$3.Leveler>? levels,
  }) {
    final _result = create();
    if (searchType != null) {
      _result.searchType = searchType;
    }
    if (targetType != null) {
      _result.targetType = targetType;
    }
    if (keyword != null) {
      _result.keyword = keyword;
    }
    if (queries != null) {
      _result.queries = queries;
    }
    if (levels != null) {
      _result.levels.addAll(levels);
    }
    return _result;
  }
  factory Query.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Query.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Query clone() => Query()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Query copyWith(void Function(Query) updates) => super.copyWith((message) => updates(message as Query)) as Query; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Query create() => Query._();
  Query createEmptyInstance() => create();
  static $pb.PbList<Query> createRepeated() => $pb.PbList<Query>();
  @$core.pragma('dart2js:noInline')
  static Query getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Query>(create);
  static Query? _defaultInstance;

  Query_ValueOf whichValueOf() => _Query_ValueOfByTag[$_whichOneof(0)]!;
  void clearValueOf() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get searchType => $_getSZ(0);
  @$pb.TagNumber(1)
  set searchType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearchType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get targetType => $_getSZ(1);
  @$pb.TagNumber(2)
  set targetType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetType() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetType() => clearField(2);

  @$pb.TagNumber(3)
  $2.Keyword get keyword => $_getN(2);
  @$pb.TagNumber(3)
  set keyword($2.Keyword v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasKeyword() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyword() => clearField(3);
  @$pb.TagNumber(3)
  $2.Keyword ensureKeyword() => $_ensure(2);

  @$pb.TagNumber(4)
  Queries get queries => $_getN(3);
  @$pb.TagNumber(4)
  set queries(Queries v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasQueries() => $_has(3);
  @$pb.TagNumber(4)
  void clearQueries() => clearField(4);
  @$pb.TagNumber(4)
  Queries ensureQueries() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.List<$3.Leveler> get levels => $_getList(4);
}

class Queries extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Queries', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'typ_query'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operant')
    ..pc<Query>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'queries', $pb.PbFieldType.PM, subBuilder: Query.create)
    ..hasRequiredFields = false
  ;

  Queries._() : super();
  factory Queries({
    $core.String? operant,
    $core.Iterable<Query>? queries,
  }) {
    final _result = create();
    if (operant != null) {
      _result.operant = operant;
    }
    if (queries != null) {
      _result.queries.addAll(queries);
    }
    return _result;
  }
  factory Queries.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Queries.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Queries clone() => Queries()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Queries copyWith(void Function(Queries) updates) => super.copyWith((message) => updates(message as Queries)) as Queries; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Queries create() => Queries._();
  Queries createEmptyInstance() => create();
  static $pb.PbList<Queries> createRepeated() => $pb.PbList<Queries>();
  @$core.pragma('dart2js:noInline')
  static Queries getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Queries>(create);
  static Queries? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get operant => $_getSZ(0);
  @$pb.TagNumber(1)
  set operant($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperant() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperant() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Query> get queries => $_getList(1);
}

