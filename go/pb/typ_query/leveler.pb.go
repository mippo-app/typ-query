// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.34.2
// 	protoc        v5.27.1
// source: typ_query/leveler.proto

package typ_query

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type Leveler struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	KeywordMap map[string]*Keyword `protobuf:"bytes,2,rep,name=keywordMap,proto3" json:"keywordMap,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"bytes,2,opt,name=value,proto3"`
}

func (x *Leveler) Reset() {
	*x = Leveler{}
	if protoimpl.UnsafeEnabled {
		mi := &file_typ_query_leveler_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Leveler) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Leveler) ProtoMessage() {}

func (x *Leveler) ProtoReflect() protoreflect.Message {
	mi := &file_typ_query_leveler_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Leveler.ProtoReflect.Descriptor instead.
func (*Leveler) Descriptor() ([]byte, []int) {
	return file_typ_query_leveler_proto_rawDescGZIP(), []int{0}
}

func (x *Leveler) GetKeywordMap() map[string]*Keyword {
	if x != nil {
		return x.KeywordMap
	}
	return nil
}

var File_typ_query_leveler_proto protoreflect.FileDescriptor

var file_typ_query_leveler_proto_rawDesc = []byte{
	0x0a, 0x17, 0x74, 0x79, 0x70, 0x5f, 0x71, 0x75, 0x65, 0x72, 0x79, 0x2f, 0x6c, 0x65, 0x76, 0x65,
	0x6c, 0x65, 0x72, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x09, 0x74, 0x79, 0x70, 0x5f, 0x71,
	0x75, 0x65, 0x72, 0x79, 0x1a, 0x17, 0x74, 0x79, 0x70, 0x5f, 0x71, 0x75, 0x65, 0x72, 0x79, 0x2f,
	0x6b, 0x65, 0x79, 0x77, 0x6f, 0x72, 0x64, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xa0, 0x01,
	0x0a, 0x07, 0x4c, 0x65, 0x76, 0x65, 0x6c, 0x65, 0x72, 0x12, 0x42, 0x0a, 0x0a, 0x6b, 0x65, 0x79,
	0x77, 0x6f, 0x72, 0x64, 0x4d, 0x61, 0x70, 0x18, 0x02, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x22, 0x2e,
	0x74, 0x79, 0x70, 0x5f, 0x71, 0x75, 0x65, 0x72, 0x79, 0x2e, 0x4c, 0x65, 0x76, 0x65, 0x6c, 0x65,
	0x72, 0x2e, 0x4b, 0x65, 0x79, 0x77, 0x6f, 0x72, 0x64, 0x4d, 0x61, 0x70, 0x45, 0x6e, 0x74, 0x72,
	0x79, 0x52, 0x0a, 0x6b, 0x65, 0x79, 0x77, 0x6f, 0x72, 0x64, 0x4d, 0x61, 0x70, 0x1a, 0x51, 0x0a,
	0x0f, 0x4b, 0x65, 0x79, 0x77, 0x6f, 0x72, 0x64, 0x4d, 0x61, 0x70, 0x45, 0x6e, 0x74, 0x72, 0x79,
	0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6b,
	0x65, 0x79, 0x12, 0x28, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x0b, 0x32, 0x12, 0x2e, 0x74, 0x79, 0x70, 0x5f, 0x71, 0x75, 0x65, 0x72, 0x79, 0x2e, 0x4b, 0x65,
	0x79, 0x77, 0x6f, 0x72, 0x64, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x3a, 0x02, 0x38, 0x01,
	0x42, 0x34, 0x5a, 0x32, 0x67, 0x69, 0x74, 0x6c, 0x61, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6d,
	0x69, 0x70, 0x70, 0x6f, 0x2e, 0x61, 0x70, 0x70, 0x2f, 0x74, 0x79, 0x70, 0x2d, 0x71, 0x75, 0x65,
	0x72, 0x79, 0x2e, 0x67, 0x69, 0x74, 0x2f, 0x67, 0x6f, 0x2f, 0x70, 0x62, 0x2f, 0x74, 0x79, 0x70,
	0x5f, 0x71, 0x75, 0x65, 0x72, 0x79, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_typ_query_leveler_proto_rawDescOnce sync.Once
	file_typ_query_leveler_proto_rawDescData = file_typ_query_leveler_proto_rawDesc
)

func file_typ_query_leveler_proto_rawDescGZIP() []byte {
	file_typ_query_leveler_proto_rawDescOnce.Do(func() {
		file_typ_query_leveler_proto_rawDescData = protoimpl.X.CompressGZIP(file_typ_query_leveler_proto_rawDescData)
	})
	return file_typ_query_leveler_proto_rawDescData
}

var file_typ_query_leveler_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_typ_query_leveler_proto_goTypes = []any{
	(*Leveler)(nil), // 0: typ_query.Leveler
	nil,             // 1: typ_query.Leveler.KeywordMapEntry
	(*Keyword)(nil), // 2: typ_query.Keyword
}
var file_typ_query_leveler_proto_depIdxs = []int32{
	1, // 0: typ_query.Leveler.keywordMap:type_name -> typ_query.Leveler.KeywordMapEntry
	2, // 1: typ_query.Leveler.KeywordMapEntry.value:type_name -> typ_query.Keyword
	2, // [2:2] is the sub-list for method output_type
	2, // [2:2] is the sub-list for method input_type
	2, // [2:2] is the sub-list for extension type_name
	2, // [2:2] is the sub-list for extension extendee
	0, // [0:2] is the sub-list for field type_name
}

func init() { file_typ_query_leveler_proto_init() }
func file_typ_query_leveler_proto_init() {
	if File_typ_query_leveler_proto != nil {
		return
	}
	file_typ_query_keyword_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_typ_query_leveler_proto_msgTypes[0].Exporter = func(v any, i int) any {
			switch v := v.(*Leveler); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_typ_query_leveler_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_typ_query_leveler_proto_goTypes,
		DependencyIndexes: file_typ_query_leveler_proto_depIdxs,
		MessageInfos:      file_typ_query_leveler_proto_msgTypes,
	}.Build()
	File_typ_query_leveler_proto = out.File
	file_typ_query_leveler_proto_rawDesc = nil
	file_typ_query_leveler_proto_goTypes = nil
	file_typ_query_leveler_proto_depIdxs = nil
}
