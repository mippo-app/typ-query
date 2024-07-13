from typ_query import keyword_pb2 as _keyword_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Mapping as _Mapping, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Leveler(_message.Message):
    __slots__ = ("keywordMap",)
    class KeywordMapEntry(_message.Message):
        __slots__ = ("key", "value")
        KEY_FIELD_NUMBER: _ClassVar[int]
        VALUE_FIELD_NUMBER: _ClassVar[int]
        key: str
        value: _keyword_pb2.Keyword
        def __init__(self, key: _Optional[str] = ..., value: _Optional[_Union[_keyword_pb2.Keyword, _Mapping]] = ...) -> None: ...
    KEYWORDMAP_FIELD_NUMBER: _ClassVar[int]
    keywordMap: _containers.MessageMap[str, _keyword_pb2.Keyword]
    def __init__(self, keywordMap: _Optional[_Mapping[str, _keyword_pb2.Keyword]] = ...) -> None: ...
