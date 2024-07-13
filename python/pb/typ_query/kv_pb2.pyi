from typ_p import value_pb2 as _value_pb2
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Mapping as _Mapping, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class KvOp(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    KV_OP_UNKNOWN: _ClassVar[KvOp]
    KV_OP_EQ: _ClassVar[KvOp]
KV_OP_UNKNOWN: KvOp
KV_OP_EQ: KvOp

class Kv(_message.Message):
    __slots__ = ("key", "operant", "value")
    KEY_FIELD_NUMBER: _ClassVar[int]
    OPERANT_FIELD_NUMBER: _ClassVar[int]
    VALUE_FIELD_NUMBER: _ClassVar[int]
    key: str
    operant: str
    value: _value_pb2.value
    def __init__(self, key: _Optional[str] = ..., operant: _Optional[str] = ..., value: _Optional[_Union[_value_pb2.value, _Mapping]] = ...) -> None: ...
