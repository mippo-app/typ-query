package typ_query

import pb "gitlab.com/mippo.app/typ-query.git/go/pb/typ_query"

type Leveler struct {
	KeywordMap map[string]*Keyword
}

func (v *Leveler) ToPb() *pb.Leveler {
	r := &pb.Leveler{
		KeywordMap: map[string]*pb.Keyword{},
	}

	for k, vvv := range v.KeywordMap {
		a := vvv.ToPb()

		r.KeywordMap[k] = a
	}

	return r
}

func LevelerFromPb(v *pb.Leveler) *Leveler {
	r := &Leveler{
		KeywordMap: map[string]*Keyword{},
	}

	for k, vvv := range v.KeywordMap {
		a := KeywordFromPb(vvv)

		r.KeywordMap[k] = a
	}

	return r
}
