from typ_query import leveler_pb2 as _leveler_pb2
from typ_query import keyword_pb2 as _keyword_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Iterable as _Iterable, Mapping as _Mapping, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Query(_message.Message):
    __slots__ = ["search_type", "target_type", "keyword", "queries", "levels"]
    SEARCH_TYPE_FIELD_NUMBER: _ClassVar[int]
    TARGET_TYPE_FIELD_NUMBER: _ClassVar[int]
    KEYWORD_FIELD_NUMBER: _ClassVar[int]
    QUERIES_FIELD_NUMBER: _ClassVar[int]
    LEVELS_FIELD_NUMBER: _ClassVar[int]
    search_type: str
    target_type: str
    keyword: _keyword_pb2.Keyword
    queries: Queries
    levels: _containers.RepeatedCompositeFieldContainer[_leveler_pb2.Leveler]
    def __init__(self, search_type: _Optional[str] = ..., target_type: _Optional[str] = ..., keyword: _Optional[_Union[_keyword_pb2.Keyword, _Mapping]] = ..., queries: _Optional[_Union[Queries, _Mapping]] = ..., levels: _Optional[_Iterable[_Union[_leveler_pb2.Leveler, _Mapping]]] = ...) -> None: ...

class Queries(_message.Message):
    __slots__ = ["operant", "queries"]
    OPERANT_FIELD_NUMBER: _ClassVar[int]
    QUERIES_FIELD_NUMBER: _ClassVar[int]
    operant: str
    queries: _containers.RepeatedCompositeFieldContainer[Query]
    def __init__(self, operant: _Optional[str] = ..., queries: _Optional[_Iterable[_Union[Query, _Mapping]]] = ...) -> None: ...
