package typ_query

import (
	"go.mongodb.org/mongo-driver/bson"

	typ_p "gitlab.com/mippo.app/typ-p.git/go"
	typ_p_pb "gitlab.com/mippo.app/typ-p.git/go/pb/typ_p"
	pb "gitlab.com/mippo.app/typ-query.git/go/pb/typ_query"
	"gorm.io/gorm/schema"
	"source.developers.google.com/p/hapii-project/r/framework.git/apps/golang/framework/logger"
)

// typ_converter_go.GetValue(value)
// GenerateKv a
func GenerateKv(key string, value *typ_p_pb.Value, operant string) *Kv {
	return &Kv{
		Key:     key,
		Value:   typ_p.ValueFromPb(value),
		Operant: operant,
	}
}

type Kv struct {
	Key     string
	Operant string
	Value   *typ_p.Value
}

func (v *Kv) ToPb() *pb.Kv {
	r := &pb.Kv{
		Key:     v.Key,
		Operant: v.Operant,
		Value:   v.Value.ToPb(),
	}

	return r
}

func KvFromPb(v *pb.Kv) *Kv {
	r := &Kv{
		Key:     v.Key,
		Operant: v.Operant,
		Value:   typ_p.ValueFromPb(v.Value),
	}

	return r
}

func (h *Kv) GetKey() string {
	return h.Key
}

func (h *Kv) GetOperant() string {
	return h.Operant
}

var ns = schema.NamingStrategy{
	TablePrefix:   "",
	SingularTable: false,
}

func GetColumnName(v string) string {
	return ns.ColumnName("", v)
}

func (h *Kv) GetOperand() string {
	return h.GetOperant()
}

func (h *Kv) GetValue() interface{} {
	return h.Value.GetPureValue()
}

func (h *Kv) ConvToSQL(mode string) string {
	r := GetColumnName(h.Key)
	operant := "like"
	if h.Operant != "" {
		operant = h.Operant
	}

	// value := ""
	quoter := ""
	switch operant {
	case "like":
		r += " LIKE "
		quoter += "%"
	case "=":
		r += " = "
	case "<":
		r += " < "
	case ">":
		r += " > "
	case "<=", "=<":
		r += " <= "
	case ">=", "=>":
		r += " >= "
	case "<@", "@<":
		r += " @< "
	case ">@", "@>":
		r += " @> "
	default:
		logger.Log.Panic(operant)
	}

	/*
		if x, ok := h.GetValueOf().(*Kv_StringValue); ok {
			r += "'" + quoter + x.StringValue + quoter + "'"
		} else if x, ok := h.GetValueOf().(*Kv_DoubleValue); ok {
			value = strconv.FormatFloat(x.DoubleValue, 'g', 10, 64)

			r += value
		} else if x, ok := h.GetValueOf().(*Kv_ArrayString); ok {
			rr := []string{}
			for _, vvv := range x.ArrayString.Values {
				rr = append(rr, "'"+vvv+"'")
			}

			r += "ARRAY[" + strings.Join(rr, ",") + "]"
		}
	*/

	return r
}

func (h *Kv) ConvToMongo() *bson.M {
	// check simpleType and Operant combination
	v := h.GetValue()
	// key := GetColumnName(h.Key)
	key := h.Key
	operant := "like"
	if h.Operant != "" {
		operant = h.Operant
	}

	r := bson.M{}

	mongoOperant := "$eq"
	switch operant {
	case "like":
		mongoOperant = "$regex"
	case "=":
		mongoOperant = "$eq"
	case "<":
		mongoOperant = "$gt"
	case ">":
		mongoOperant = "$lt"
	case "<=", "=<":
		mongoOperant = "$gte"
	case ">=", "=>":
		mongoOperant = "$lte"
	case "<@":
		mongoOperant = "$in"
	case "@>":
		mongoOperant = "$in"
	default:
		logger.Log.Panic(operant)
	}

	// vv, err := converter.BaseToAnother("mongo", h.ValueType, v)
	// if err != nil {
	// 	logger.Log.Panic(err.Error())
	// }
	r[key] = bson.M{
		mongoOperant: v, // TODO: CONV???
	}

	return &r
}

func (h *Kv) ConvToFireStore() map[string]map[string]interface{} {
	// check simpleType and Operant combination
	v := h.GetValue()
	key := GetColumnName(h.Key)
	operant := "="
	if h.Operant != "" {
		operant = h.Operant
	}

	r := map[string]map[string]interface{}{}

	mongoOperant := "=="
	switch operant {
	case "=":
		mongoOperant = "=="
	case "<":
		mongoOperant = ">"
	case ">":
		mongoOperant = "<"
	case "<=", "=<":
		mongoOperant = ">="
	case ">=", "=>":
		mongoOperant = "<="
	case "<@":
		mongoOperant = "array-contains-any"
	case "@>":
		mongoOperant = "array-contains-any"
	default:
		logger.Log.Panic(operant)
	}

	r[key] = bson.M{
		mongoOperant: v,
	}

	return r

}
