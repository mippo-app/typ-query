//
//  Generated code. Do not modify.
//  source: typ_query/kv.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class KvOp extends $pb.ProtobufEnum {
  static const KvOp KV_OP_UNKNOWN = KvOp._(0, _omitEnumNames ? '' : 'KV_OP_UNKNOWN');
  static const KvOp KV_OP_EQ = KvOp._(1, _omitEnumNames ? '' : 'KV_OP_EQ');

  static const $core.List<KvOp> values = <KvOp> [
    KV_OP_UNKNOWN,
    KV_OP_EQ,
  ];

  static final $core.Map<$core.int, KvOp> _byValue = $pb.ProtobufEnum.initByValue(values);
  static KvOp? valueOf($core.int value) => _byValue[value];

  const KvOp._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
