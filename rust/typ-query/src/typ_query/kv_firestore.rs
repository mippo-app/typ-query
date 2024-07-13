use gcloud_sdk::google::firestore::v1::structured_query::{
    field_filter::Operator, FieldFilter, FieldReference, Filter,
};

use super::Kv;

impl Into<FieldFilter> for Kv {
    fn into(self) -> FieldFilter {
        let v = if let Some(value) = self.value {
            Some(value.into())
        } else {
            None
        };
        let r = FieldFilter {
            field: Some(FieldReference {
                field_path: self.key,
            }),
            op: Operator::from(self.operant.into()).into(),
            value: v,
        };

        return r;
    }
}
