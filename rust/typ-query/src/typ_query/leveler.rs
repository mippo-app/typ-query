use crate::pb::typ_query::Leveler as pb_Leveler;

use crate::typ_query::Keyword;
use std::collections::HashMap;

use derive_pb::Pb;

#[derive(Debug, Clone, Pb)]
#[pb(pb_name = "pb_Leveler")]
pub struct Leveler {
    pub keyword_map: HashMap<String, Keyword>,
}

impl Leveler {
    pub fn new(keyword_map: HashMap<String, Keyword>) -> Self {
        return Self {
            keyword_map: keyword_map,
        };
    }
}

impl From<Leveler> for HashMap<String, Keyword> {
    fn from(m: Leveler) -> Self {
        let mut r = HashMap::new();

        for (k, v) in m.keyword_map {
            r.insert(k, v);
        }

        return r;
    }
}
