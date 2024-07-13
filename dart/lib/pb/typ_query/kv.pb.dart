///
//  Generated code. Do not modify.
//  source: typ_query/kv.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:typ_p/pb/typ_p/value.pb.dart' as $0;

class Kv extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Kv',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'typ_query'),
      createEmptyInstance: create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'key')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'operant')
    ..aOM<$0.value>(
        20,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: $0.value.create)
    ..hasRequiredFields = false;

  Kv._() : super();
  factory Kv({
    $core.String? key,
    $core.String? operant,
    $0.value? value,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (operant != null) {
      _result.operant = operant;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Kv.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Kv.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Kv clone() => Kv()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Kv copyWith(void Function(Kv) updates) =>
      super.copyWith((message) => updates(message as Kv))
          as Kv; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Kv create() => Kv._();
  Kv createEmptyInstance() => create();
  static $pb.PbList<Kv> createRepeated() => $pb.PbList<Kv>();
  @$core.pragma('dart2js:noInline')
  static Kv getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Kv>(create);
  static Kv? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get operant => $_getSZ(1);
  @$pb.TagNumber(3)
  set operant($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOperant() => $_has(1);
  @$pb.TagNumber(3)
  void clearOperant() => clearField(3);

  @$pb.TagNumber(20)
  $0.value get value => $_getN(2);
  @$pb.TagNumber(20)
  set value($0.value v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(20)
  void clearValue() => clearField(20);
  @$pb.TagNumber(20)
  $0.value ensureValue() => $_ensure(2);
}
