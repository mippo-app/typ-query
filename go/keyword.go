package typ_query

import (
	"strings"

	pb "gitlab.com/mippo.app/typ-query.git/go/pb/typ_query"
	"go.mongodb.org/mongo-driver/bson"
	mongo_primitive "go.mongodb.org/mongo-driver/bson/primitive"
	"source.developers.google.com/p/hapii-project/r/framework.git/apps/golang/framework/logger"
)

func ConvKeywordsToKeyword(keywords *Keywords) *Keyword {
	return &Keyword{
		ValueOf: &Keyword_Keywords{
			Keywords: keywords,
		},
	}
}

func GenerateKeywordsSimple(keywords []*Keyword, operant string) *Keywords {
	r := &Keywords{
		Operant:  operant,
		Keywords: keywords,
	}

	return r
}

// GenerateKeywordSimple a
// @Depercerd
func GenerateKeywordSimple(kvs []*Kv) []*Keyword {
	r := []*Keyword{}

	for _, kv := range kvs {
		keyword := ConvKvToKeyword(kv)

		r = append(r, keyword)
	}

	return r
}

func ConvKvToKeyword(kv *Kv) *Keyword {
	keyword := &Keyword{
		ValueOf: &Keyword_Kv{
			Kv: kv,
		},
	}

	return keyword
}

type Keyword struct {
	ValueOf isKeyword_ValueOf
}

// ConvToMongo a
func (h *Keyword) ConvToSQL(mode string) string {
	switch v := h.ValueOf.(type) {
	case *Keyword_Kv:
		return v.Kv.ConvToSQL(mode)
	case *Keyword_Keywords:
		return v.Keywords.ConvToSQL(mode)
	default:
		panic("")
	}
}

// ConvToMongo a
func (h *Keyword) ConvToMongo() *bson.M {
	switch v := h.ValueOf.(type) {
	case *Keyword_Kv:
		return v.Kv.ConvToMongo()
	case *Keyword_Keywords:
		return v.Keywords.ConvToMongo()
	default:
		panic("")
	}
}

func (h *Keyword) ConvToFireStore() map[string]map[string]interface{} {
	switch v := h.ValueOf.(type) {
	case *Keyword_Kv:
		return v.Kv.ConvToFireStore()
	case *Keyword_Keywords:
		return v.Keywords.ConvToFireStore()
	default:
		panic("")
	}
}

func (v *Keyword) ToPb() *pb.Keyword {
	r := &pb.Keyword{}

	switch vv := v.ValueOf.(type) {
	case *Keyword_Kv:
		a := &pb.Keyword_Kv{
			Kv: vv.Kv.ToPb(),
		}

		r.ValueOf = a
	case *Keyword_Keywords:
		a := &pb.Keyword_Keywords{
			Keywords: vv.Keywords.ToPb(),
		}

		r.ValueOf = a
	default:
		panic("")
	}

	return r
}

func KeywordFromPb(v *pb.Keyword) *Keyword {
	r := &Keyword{}

	if v.ValueOf == nil {
		return r
	}

	switch vv := v.ValueOf.(type) {
	case *pb.Keyword_Kv:
		a := &Keyword_Kv{
			Kv: KvFromPb(vv.Kv),
		}

		r.ValueOf = a
	case *pb.Keyword_Keywords:
		a := &Keyword_Keywords{
			Keywords: KeywordsFromPb(vv.Keywords),
		}

		r.ValueOf = a
	default:
		panic("")
	}

	return r
}

type isKeyword_ValueOf interface {
	isKeyword_ValueOf()
}

type Keyword_Kv struct {
	Kv *Kv
}

type Keyword_Keywords struct {
	Keywords *Keywords
}

func (*Keyword_Kv) isKeyword_ValueOf() {}

func (*Keyword_Keywords) isKeyword_ValueOf() {}

type Keywords struct {
	Operant  string
	Keywords []*Keyword
}

func (v *Keywords) ToPb() *pb.Keywords {
	r := &pb.Keywords{
		Operant:  v.Operant,
		Keywords: []*pb.Keyword{},
	}

	for _, keyword := range v.Keywords {
		a := keyword.ToPb()

		r.Keywords = append(r.Keywords, a)
	}

	return r
}

func KeywordsFromPb(v *pb.Keywords) *Keywords {
	r := &Keywords{
		Operant:  v.Operant,
		Keywords: []*Keyword{},
	}

	for _, keyword := range v.Keywords {
		a := KeywordFromPb(keyword)

		r.Keywords = append(r.Keywords, a)
	}

	return r
}

// ConvToMongo a
func (h *Keywords) ConvToSQL(mode string) string {
	// operant: AND OR
	if h == nil || h.Keywords == nil {
		return ""
	}

	r := []string{}
	for _, keyword := range h.Keywords {
		a := keyword.ConvToSQL(mode)

		r = append(r, "("+a+")")
	}

	if h.Operant == "AND" {
		return strings.Join(r, " AND ")
	} else if h.Operant == "OR" {
		return strings.Join(r, " AND ")
	} else {
		logger.Log.Panic(h.Operant)
	}

	return ""
}

// ConvToMongo a
func (h *Keywords) ConvToMongo() *bson.M {
	// operant: AND OR
	if h == nil || h.Keywords == nil {
		return &bson.M{}
	}

	r := []bson.M{}
	for _, keyword := range h.Keywords {
		ma := bson.M{}
		a := keyword.ConvToMongo()
		b := map[string]interface{}(*a)
		for k, v := range b {
			if _, ok := ma[k]; ok {
				for kk, vv := range v.(mongo_primitive.M) {
					ma[k].(mongo_primitive.M)[kk] = vv
				}
			} else {
				ma[k] = v
			}
		}

		r = append(r, ma)
	}

	rr := bson.M{}
	if len(r) > 0 {
		if h.Operant == "AND" {
			rr["$and"] = r
		} else if h.Operant == "OR" {
			rr["$or"] = r
		} else {
			logger.Log.Panic(h.Operant)
		}
	}

	return &rr
}

func (h *Keywords) ConvToFireStore() map[string]map[string]interface{} {
	if h == nil || h.Keywords == nil {
		return map[string]map[string]interface{}{}
	}

	r := map[string]map[string]interface{}{}
	for _, keyword := range h.Keywords {
		a := keyword.ConvToFireStore()
		for k, v := range a {
			if _, ok := r[k]; ok {
				for kk, vv := range v {
					r[k][kk] = vv
				}
			} else {
				r[k] = v
			}

		}
	}

	return r
}
