package typ_query

import pb "gitlab.com/mippo.app/typ-query.git/go/pb/typ_query"

type Query struct {
	ValueOf isQuery_ValueOf
	Levels  []*Leveler
}

func (v *Query) ToPb() *pb.Query {
	r := &pb.Query{
		Levels: []*pb.Leveler{},
	}

	for _, leveler := range v.Levels {
		a := leveler.ToPb()

		r.Levels = append(r.Levels, a)
	}

	switch v := v.ValueOf.(type) {
	case *Query_Keyword:
		a := &pb.Query_Keyword{
			Keyword: v.Keyword.ToPb(),
		}

		r.ValueOf = a
	case *Query_Queries:
		a := &pb.Query_Queries{
			Queries: v.Queries.ToPb(),
		}

		r.ValueOf = a
	default:
		panic("")
	}

	return r
}

func QueryFromPb(v *pb.Query) *Query {
	r := &Query{
		Levels: []*Leveler{},
	}

	for _, leveler := range v.Levels {
		a := LevelerFromPb(leveler)

		r.Levels = append(r.Levels, a)
	}

	switch v := v.ValueOf.(type) {
	case *pb.Query_Keyword:
		a := &Query_Keyword{
			Keyword: KeywordFromPb(v.Keyword),
		}

		r.ValueOf = a
	case *pb.Query_Queries:
		a := &Query_Queries{
			Queries: QueriesFromPb(v.Queries),
		}

		r.ValueOf = a
	default:
		panic("")
	}

	return r
}

type isQuery_ValueOf interface {
	isQuery_ValueOf()
}

type Query_Keyword struct {
	Keyword *Keyword
}

type Query_Queries struct {
	Queries *Queries
}

func (*Query_Keyword) isQuery_ValueOf() {}

func (*Query_Queries) isQuery_ValueOf() {}

type Queries struct {
	Operant string
	Queries []*Query
}

func (v *Queries) ToPb() *pb.Queries {
	r := &pb.Queries{
		Operant: v.Operant,
		Queries: []*pb.Query{},
	}

	for _, q := range v.Queries {
		a := q.ToPb()

		r.Queries = append(r.Queries, a)
	}

	return r
}

func QueriesFromPb(v *pb.Queries) *Queries {
	r := &Queries{
		Operant: v.Operant,
		Queries: []*Query{},
	}

	for _, q := range v.Queries {
		a := QueryFromPb(q)

		r.Queries = append(r.Queries, a)
	}

	return r
}
