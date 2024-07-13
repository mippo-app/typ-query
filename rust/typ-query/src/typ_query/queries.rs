use crate::pb::typ_query::Queries as pb_Queries;

use derive_pb::Pb;

use crate::typ_query::query::Query;

#[derive(Debug, Clone, Pb)]
#[pb(pb_name = "pb_Queries")]
pub struct Queries {
    pub operant: String,
    pub queries: Vec<Query>,
}
