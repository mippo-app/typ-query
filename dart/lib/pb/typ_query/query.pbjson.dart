///
//  Generated code. Do not modify.
//  source: typ_query/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use queryDescriptor instead')
const Query$json = const {
  '1': 'Query',
  '2': const [
    const {'1': 'search_type', '3': 1, '4': 1, '5': 9, '10': 'searchType'},
    const {'1': 'target_type', '3': 2, '4': 1, '5': 9, '10': 'targetType'},
    const {'1': 'keyword', '3': 3, '4': 1, '5': 11, '6': '.typ_query.Keyword', '9': 0, '10': 'keyword'},
    const {'1': 'queries', '3': 4, '4': 1, '5': 11, '6': '.typ_query.Queries', '9': 0, '10': 'queries'},
    const {'1': 'levels', '3': 5, '4': 3, '5': 11, '6': '.typ_query.Leveler', '10': 'levels'},
  ],
  '8': const [
    const {'1': 'value_of'},
  ],
};

/// Descriptor for `Query`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryDescriptor = $convert.base64Decode('CgVRdWVyeRIfCgtzZWFyY2hfdHlwZRgBIAEoCVIKc2VhcmNoVHlwZRIfCgt0YXJnZXRfdHlwZRgCIAEoCVIKdGFyZ2V0VHlwZRIuCgdrZXl3b3JkGAMgASgLMhIudHlwX3F1ZXJ5LktleXdvcmRIAFIHa2V5d29yZBIuCgdxdWVyaWVzGAQgASgLMhIudHlwX3F1ZXJ5LlF1ZXJpZXNIAFIHcXVlcmllcxIqCgZsZXZlbHMYBSADKAsyEi50eXBfcXVlcnkuTGV2ZWxlclIGbGV2ZWxzQgoKCHZhbHVlX29m');
@$core.Deprecated('Use queriesDescriptor instead')
const Queries$json = const {
  '1': 'Queries',
  '2': const [
    const {'1': 'operant', '3': 1, '4': 1, '5': 9, '10': 'operant'},
    const {'1': 'queries', '3': 2, '4': 3, '5': 11, '6': '.typ_query.Query', '10': 'queries'},
  ],
};

/// Descriptor for `Queries`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queriesDescriptor = $convert.base64Decode('CgdRdWVyaWVzEhgKB29wZXJhbnQYASABKAlSB29wZXJhbnQSKgoHcXVlcmllcxgCIAMoCzIQLnR5cF9xdWVyeS5RdWVyeVIHcXVlcmllcw==');
