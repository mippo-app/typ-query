# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: typ_query/kv.proto
# Protobuf Python Version: 5.26.1
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from typ_p import value_pb2 as typ__p_dot_value__pb2


DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x12typ_query/kv.proto\x12\ttyp_query\x1a\x11typ_p/value.proto\"?\n\x02Kv\x12\x0b\n\x03key\x18\x02 \x01(\t\x12\x0f\n\x07operant\x18\x03 \x01(\t\x12\x1b\n\x05value\x18\x14 \x01(\x0b\x32\x0c.typ_p.value*\'\n\x04KvOp\x12\x11\n\rKV_OP_UNKNOWN\x10\x00\x12\x0c\n\x08KV_OP_EQ\x10\x01\x42\x34Z2gitlab.com/mippo.app/typ-query.git/go/pb/typ_queryb\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'typ_query.kv_pb2', _globals)
if not _descriptor._USE_C_DESCRIPTORS:
  _globals['DESCRIPTOR']._loaded_options = None
  _globals['DESCRIPTOR']._serialized_options = b'Z2gitlab.com/mippo.app/typ-query.git/go/pb/typ_query'
  _globals['_KVOP']._serialized_start=117
  _globals['_KVOP']._serialized_end=156
  _globals['_KV']._serialized_start=52
  _globals['_KV']._serialized_end=115
# @@protoc_insertion_point(module_scope)
