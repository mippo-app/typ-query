//
//  Generated code. Do not modify.
//  source: typ_query/kv.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use kvOpDescriptor instead')
const KvOp$json = {
  '1': 'KvOp',
  '2': [
    {'1': 'KV_OP_UNKNOWN', '2': 0},
    {'1': 'KV_OP_EQ', '2': 1},
  ],
};

/// Descriptor for `KvOp`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List kvOpDescriptor = $convert.base64Decode(
    'CgRLdk9wEhEKDUtWX09QX1VOS05PV04QABIMCghLVl9PUF9FURAB');

@$core.Deprecated('Use kvDescriptor instead')
const Kv$json = {
  '1': 'Kv',
  '2': [
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'operant', '3': 3, '4': 1, '5': 9, '10': 'operant'},
    {'1': 'value', '3': 20, '4': 1, '5': 11, '6': '.typ_p.value', '10': 'value'},
  ],
};

/// Descriptor for `Kv`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kvDescriptor = $convert.base64Decode(
    'CgJLdhIQCgNrZXkYAiABKAlSA2tleRIYCgdvcGVyYW50GAMgASgJUgdvcGVyYW50EiIKBXZhbH'
    'VlGBQgASgLMgwudHlwX3AudmFsdWVSBXZhbHVl');

