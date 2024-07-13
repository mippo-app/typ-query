from typ_query import kv_pb2 as _kv_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Iterable as _Iterable, Mapping as _Mapping, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Keyword(_message.Message):
    __slots__ = ["kv", "keywords"]
    KV_FIELD_NUMBER: _ClassVar[int]
    KEYWORDS_FIELD_NUMBER: _ClassVar[int]
    kv: _kv_pb2.Kv
    keywords: Keywords
    def __init__(self, kv: _Optional[_Union[_kv_pb2.Kv, _Mapping]] = ..., keywords: _Optional[_Union[Keywords, _Mapping]] = ...) -> None: ...

class Keywords(_message.Message):
    __slots__ = ["operant", "keywords"]
    OPERANT_FIELD_NUMBER: _ClassVar[int]
    KEYWORDS_FIELD_NUMBER: _ClassVar[int]
    operant: str
    keywords: _containers.RepeatedCompositeFieldContainer[Keyword]
    def __init__(self, operant: _Optional[str] = ..., keywords: _Optional[_Iterable[_Union[Keyword, _Mapping]]] = ...) -> None: ...
