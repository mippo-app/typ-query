//
//  Generated code. Do not modify.
//  source: typ_query/keyword.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use keywordDescriptor instead')
const Keyword$json = {
  '1': 'Keyword',
  '2': [
    {'1': 'kv', '3': 1, '4': 1, '5': 11, '6': '.typ_query.Kv', '9': 0, '10': 'kv'},
    {'1': 'keywords', '3': 2, '4': 1, '5': 11, '6': '.typ_query.Keywords', '9': 0, '10': 'keywords'},
  ],
  '8': [
    {'1': 'value_of'},
  ],
};

/// Descriptor for `Keyword`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keywordDescriptor = $convert.base64Decode(
    'CgdLZXl3b3JkEh8KAmt2GAEgASgLMg0udHlwX3F1ZXJ5Lkt2SABSAmt2EjEKCGtleXdvcmRzGA'
    'IgASgLMhMudHlwX3F1ZXJ5LktleXdvcmRzSABSCGtleXdvcmRzQgoKCHZhbHVlX29m');

@$core.Deprecated('Use keywordsDescriptor instead')
const Keywords$json = {
  '1': 'Keywords',
  '2': [
    {'1': 'operant', '3': 1, '4': 1, '5': 9, '10': 'operant'},
    {'1': 'keywords', '3': 2, '4': 3, '5': 11, '6': '.typ_query.Keyword', '10': 'keywords'},
  ],
};

/// Descriptor for `Keywords`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keywordsDescriptor = $convert.base64Decode(
    'CghLZXl3b3JkcxIYCgdvcGVyYW50GAEgASgJUgdvcGVyYW50Ei4KCGtleXdvcmRzGAIgAygLMh'
    'IudHlwX3F1ZXJ5LktleXdvcmRSCGtleXdvcmRz');

