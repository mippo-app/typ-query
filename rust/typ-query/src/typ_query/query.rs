use crate::pb::typ_query as pb_typ_query;

use pb_typ_query::{query::ValueOf as pb_ValueOf, Query as pb_Query};

use crate::typ_query::{Keyword, Kv};
use pb_typ_query::{Leveler, Queries};

use derive_pb::Pb;

use super::keyword::conv_kv_multi_to_keyword;

#[derive(Debug, Clone, Pb)]
#[pb(pb_name = "pb_Query")]
pub struct Query {
    pub search_type: String,
    pub target_type: String,
    pub levels: Vec<Leveler>,
    pub value_of: Option<ValueOf>,
}

#[derive(Debug, Clone, Pb)]
#[pb(pb_name = "pb_ValueOf")]
pub enum ValueOf {
    Keyword(Keyword),
    Queries(Queries),
}

impl Query {
    pub fn new(
        search_type: String,
        target_type: String,
        levels: Vec<Leveler>,
        value_of: Option<ValueOf>,
    ) -> Self {
        return Self {
            search_type: search_type,
            target_type: target_type,
            levels: levels,
            value_of: value_of,
        };
    }

    pub fn new_from_keyword(
        search_type: String,
        target_type: String,
        levels: Vec<Leveler>,
        keyword: Keyword,
    ) -> Self {
        return Self {
            search_type,
            target_type,
            levels,
            value_of: Some(ValueOf::Keyword(keyword)),
        };
    }

    pub fn get_keyword(&self) -> Option<Keyword> {
        if let Some(value_of) = &self.value_of {
            return match value_of {
                ValueOf::Keyword(keyword) => Some(keyword.clone()),
                _ => None,
            };
        }

        return None;
    }
}

pub fn conv_kv_multi_to_query(
    search_type: &str,
    target_type: &str,
    operant: &str,
    kvs: Vec<Kv>,
) -> Query {
    let k = conv_kv_multi_to_keyword(operant, kvs);

    let value_of = ValueOf::Keyword(k);

    let q = Query::new(
        search_type.to_string(),
        target_type.to_string(),
        vec![],
        Some(value_of),
    );

    return q;
}
