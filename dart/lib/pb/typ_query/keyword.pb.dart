///
//  Generated code. Do not modify.
//  source: typ_query/keyword.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'kv.pb.dart' as $1;

enum Keyword_ValueOf {
  kv, 
  keywords, 
  notSet
}

class Keyword extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Keyword_ValueOf> _Keyword_ValueOfByTag = {
    1 : Keyword_ValueOf.kv,
    2 : Keyword_ValueOf.keywords,
    0 : Keyword_ValueOf.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Keyword', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'typ_query'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.Kv>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kv', subBuilder: $1.Kv.create)
    ..aOM<Keywords>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keywords', subBuilder: Keywords.create)
    ..hasRequiredFields = false
  ;

  Keyword._() : super();
  factory Keyword({
    $1.Kv? kv,
    Keywords? keywords,
  }) {
    final _result = create();
    if (kv != null) {
      _result.kv = kv;
    }
    if (keywords != null) {
      _result.keywords = keywords;
    }
    return _result;
  }
  factory Keyword.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Keyword.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Keyword clone() => Keyword()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Keyword copyWith(void Function(Keyword) updates) => super.copyWith((message) => updates(message as Keyword)) as Keyword; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Keyword create() => Keyword._();
  Keyword createEmptyInstance() => create();
  static $pb.PbList<Keyword> createRepeated() => $pb.PbList<Keyword>();
  @$core.pragma('dart2js:noInline')
  static Keyword getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Keyword>(create);
  static Keyword? _defaultInstance;

  Keyword_ValueOf whichValueOf() => _Keyword_ValueOfByTag[$_whichOneof(0)]!;
  void clearValueOf() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.Kv get kv => $_getN(0);
  @$pb.TagNumber(1)
  set kv($1.Kv v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKv() => $_has(0);
  @$pb.TagNumber(1)
  void clearKv() => clearField(1);
  @$pb.TagNumber(1)
  $1.Kv ensureKv() => $_ensure(0);

  @$pb.TagNumber(2)
  Keywords get keywords => $_getN(1);
  @$pb.TagNumber(2)
  set keywords(Keywords v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeywords() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeywords() => clearField(2);
  @$pb.TagNumber(2)
  Keywords ensureKeywords() => $_ensure(1);
}

class Keywords extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Keywords', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'typ_query'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operant')
    ..pc<Keyword>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keywords', $pb.PbFieldType.PM, subBuilder: Keyword.create)
    ..hasRequiredFields = false
  ;

  Keywords._() : super();
  factory Keywords({
    $core.String? operant,
    $core.Iterable<Keyword>? keywords,
  }) {
    final _result = create();
    if (operant != null) {
      _result.operant = operant;
    }
    if (keywords != null) {
      _result.keywords.addAll(keywords);
    }
    return _result;
  }
  factory Keywords.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Keywords.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Keywords clone() => Keywords()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Keywords copyWith(void Function(Keywords) updates) => super.copyWith((message) => updates(message as Keywords)) as Keywords; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Keywords create() => Keywords._();
  Keywords createEmptyInstance() => create();
  static $pb.PbList<Keywords> createRepeated() => $pb.PbList<Keywords>();
  @$core.pragma('dart2js:noInline')
  static Keywords getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Keywords>(create);
  static Keywords? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get operant => $_getSZ(0);
  @$pb.TagNumber(1)
  set operant($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOperant() => $_has(0);
  @$pb.TagNumber(1)
  void clearOperant() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Keyword> get keywords => $_getList(1);
}

