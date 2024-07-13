use gcloud_sdk::google::firestore::v1::structured_query::composite_filter::Operator;
use gcloud_sdk::google::firestore::v1::structured_query::CompositeFilter;

use super::Keywords;

fn str_to_op(v: String) -> Operator {
    if v == String::from("AND") {
        return Operator::And;
    } else if v == String::from("OR") {
        return Operator::Or;
    } else {
        return Operator::Unspecified;
    }
}

impl Into<CompositeFilter> for Keywords {
    fn into(self) -> CompositeFilter {
        let op = str_to_op(self.operant);
        let mut filters = vec![];
        for keyword in self.keywords.into_iter() {
            filters.push(keyword.into());
        }
        let r = CompositeFilter {
            op: op.into(),
            filters: filters,
        };

        return r;
    }
}
