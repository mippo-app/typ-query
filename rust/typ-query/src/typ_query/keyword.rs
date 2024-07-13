use core::option::Option;
use derive_pb::Pb;
use std::collections::HashMap;

use crate::typ_query::{Keywords, Kv};

use crate::pb::typ_query as pb_typ_query;

use pb_typ_query::{keyword::ValueOf as pb_ValueOf, Keyword as pb_Keyword};

use typ_p::typ_p::value_of::ValueOf as basic_Value;

#[derive(Debug, Clone, PartialEq, Pb)]
#[pb(pb_name = "pb_Keyword")]
pub struct Keyword {
    pub value_of: Option<ValueOf>,
}

#[derive(Debug, Clone, PartialEq, Pb)]
#[pb(pb_name = "pb_ValueOf")]
pub enum ValueOf {
    Kv(Kv),
    Keywords(Keywords),
}

impl Keyword {
    pub fn new(value_of: Option<ValueOf>) -> Self {
        return Self { value_of: value_of };
    }

    pub fn new_from_kv(kv: Kv) -> Self {
        return Self {
            value_of: Some(ValueOf::Kv(kv)),
        };
    }

    pub fn new_from_keywords(keywords: Keywords) -> Self {
        return Self {
            value_of: Some(ValueOf::Keywords(keywords)),
        };
    }

    pub fn compare(&self, value_of: &HashMap<String, basic_Value>) -> Option<bool> {
        if let Some(ValueOf::Kv(kv)) = &self.value_of {
            return kv.compare(value_of);
        } else if let Some(ValueOf::Keywords(keywords)) = &self.value_of {
            return keywords.compare(value_of);
        }

        return Some(false);
    }
}

#[cfg(test)]
mod tests {
    use std::collections::HashMap;
    use typ_p::typ_p::value::ValueOf;

    use crate::typ_query::{keyword::conv_kv_to_keyword, kv::generate_kv};

    #[test]
    fn compare() {
        let uuids = vec![
            // ValueOf::UuidValue(uuid::Uuid::new_v4()),
            // ValueOf::UuidValue(uuid::Uuid::new_v4()),
        ];
        let keyword = conv_kv_to_keyword(
            generate_kv(
                String::from("uuid"),
                ValueOf::ArrayValue(uuids.clone()),
                String::from("<@"),
            )
            .unwrap(),
        );

        let mut v = HashMap::new();
        v.insert(String::from("uuid"), uuids[1].clone());

        assert_eq!(keyword.compare(&v), Some(true));
    }
}

pub fn conv_kv_multi_to_keyword(operant: &str, kvs: Vec<Kv>) -> Keyword {
    let mut keyword_multi = vec![];
    for kv in kvs.into_iter() {
        let value_of = ValueOf::Kv(kv);
        keyword_multi.push(Keyword::new(Some(value_of)))
    }

    let value_of = ValueOf::Keywords(Keywords::new(operant.to_string(), keyword_multi));
    let keyword = Keyword::new(Some(value_of));

    return keyword;
}

pub fn conv_kv_to_keyword(kv: Kv) -> Keyword {
    return Keyword::new(Some(ValueOf::Kv(kv)));
}
