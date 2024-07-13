//
//  Generated code. Do not modify.
//  source: typ_query/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queryDescriptor instead')
const Query$json = {
  '1': 'Query',
  '2': [
    {'1': 'search_type', '3': 1, '4': 1, '5': 9, '10': 'searchType'},
    {'1': 'target_type', '3': 2, '4': 1, '5': 9, '10': 'targetType'},
    {'1': 'keyword', '3': 3, '4': 1, '5': 11, '6': '.typ_query.Keyword', '9': 0, '10': 'keyword'},
    {'1': 'queries', '3': 4, '4': 1, '5': 11, '6': '.typ_query.Queries', '9': 0, '10': 'queries'},
    {'1': 'levels', '3': 5, '4': 3, '5': 11, '6': '.typ_query.Leveler', '10': 'levels'},
  ],
  '8': [
    {'1': 'value_of'},
  ],
};

/// Descriptor for `Query`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDescriptor = $convert.base64Decode(
    'CgVRdWVyeRIfCgtzZWFyY2hfdHlwZRgBIAEoCVIKc2VhcmNoVHlwZRIfCgt0YXJnZXRfdHlwZR'
    'gCIAEoCVIKdGFyZ2V0VHlwZRIuCgdrZXl3b3JkGAMgASgLMhIudHlwX3F1ZXJ5LktleXdvcmRI'
    'AFIHa2V5d29yZBIuCgdxdWVyaWVzGAQgASgLMhIudHlwX3F1ZXJ5LlF1ZXJpZXNIAFIHcXVlcm'
    'llcxIqCgZsZXZlbHMYBSADKAsyEi50eXBfcXVlcnkuTGV2ZWxlclIGbGV2ZWxzQgoKCHZhbHVl'
    'X29m');

@$core.Deprecated('Use queriesDescriptor instead')
const Queries$json = {
  '1': 'Queries',
  '2': [
    {'1': 'operant', '3': 1, '4': 1, '5': 9, '10': 'operant'},
    {'1': 'queries', '3': 2, '4': 3, '5': 11, '6': '.typ_query.Query', '10': 'queries'},
  ],
};

/// Descriptor for `Queries`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queriesDescriptor = $convert.base64Decode(
    'CgdRdWVyaWVzEhgKB29wZXJhbnQYASABKAlSB29wZXJhbnQSKgoHcXVlcmllcxgCIAMoCzIQLn'
    'R5cF9xdWVyeS5RdWVyeVIHcXVlcmllcw==');

