//
//  Generated code. Do not modify.
//  source: typ_query/leveler.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'keyword.pb.dart' as $2;

class Leveler extends $pb.GeneratedMessage {
  factory Leveler({
    $core.Map<$core.String, $2.Keyword>? keywordMap,
  }) {
    final $result = create();
    if (keywordMap != null) {
      $result.keywordMap.addAll(keywordMap);
    }
    return $result;
  }
  Leveler._() : super();
  factory Leveler.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Leveler.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Leveler', package: const $pb.PackageName(_omitMessageNames ? '' : 'typ_query'), createEmptyInstance: create)
    ..m<$core.String, $2.Keyword>(2, _omitFieldNames ? '' : 'keywordMap', protoName: 'keywordMap', entryClassName: 'Leveler.KeywordMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $2.Keyword.create, valueDefaultOrMaker: $2.Keyword.getDefault, packageName: const $pb.PackageName('typ_query'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Leveler clone() => Leveler()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Leveler copyWith(void Function(Leveler) updates) => super.copyWith((message) => updates(message as Leveler)) as Leveler;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
