use gcloud_sdk::google::firestore::v1::structured_query::{
    filter::FilterType, FieldReference, Filter,
};

use super::{keyword, Keyword};

impl Into<Filter> for Keyword {
    fn into(self) -> Filter {
        let v = if let Some(value) = self.value_of {
            Some(value.into())
        } else {
            None
        };
        let r = Filter { filter_type: v };

        return r;
    }
}

impl Into<FilterType> for keyword::ValueOf {
    fn into(self) -> FilterType {
        return match self {
            keyword::ValueOf::Kv(v) => FilterType::FieldFilter(v.into()),
            keyword::ValueOf::Keywords(v) => FilterType::CompositeFilter(v.into()),
        };
    }
}
