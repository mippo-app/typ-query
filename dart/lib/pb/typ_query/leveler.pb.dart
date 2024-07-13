///
//  Generated code. Do not modify.
//  source: typ_query/leveler.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'keyword.pb.dart' as $2;

class Leveler extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Leveler', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'typ_query'), createEmptyInstance: create)
    ..m<$core.String, $2.Keyword>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keywordMap', protoName: 'keywordMap', entryClassName: 'Leveler.KeywordMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $2.Keyword.create, packageName: const $pb.PackageName('typ_query'))
    ..hasRequiredFields = false
  ;

  Leveler._() : super();
  factory Leveler({
    $core.Map<$core.String, $2.Keyword>? keywordMap,
  }) {
    final _result = create();
    if (keywordMap != null) {
      _result.keywordMap.addAll(keywordMap);
    }
    return _result;
  }
  factory Leveler.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Leveler.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Leveler clone() => Leveler()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Leveler copyWith(void Function(Leveler) updates) => super.copyWith((message) => updates(message as Leveler)) as Leveler; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Leveler create() => Leveler._();
  Leveler createEmptyInstance() => create();
  static $pb.PbList<Leveler> createRepeated() => $pb.PbList<Leveler>();
  @$core.pragma('dart2js:noInline')
  static Leveler getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Leveler>(create);
  static Leveler? _defaultInstance;

  @$pb.TagNumber(2)
  $core.Map<$core.String, $2.Keyword> get keywordMap => $_getMap(0);
}

