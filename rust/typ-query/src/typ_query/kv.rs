use crate::pb::typ_query as pb_typ_query;

use pb_typ_query::Kv as pb_Kv;
use typ_p::typ_p::operator::Operator;
use typ_p::typ_p::value_of::ValueOf;

use std::collections::HashMap;
use std::error::Error;

use typ_p::typ_p::value::Value;
use typ_p::typ_p::value_compare::ValueOfCompare;

use derive_pb::Pb;

#[derive(Debug, Clone, PartialEq, Pb)]
#[pb(pb_name = "pb_Kv")]
pub struct Kv {
    pub key: String,
    pub operant: Operator,
    pub value: Option<Value>,
}

impl Kv {
    pub fn new(k: String, operant: Operator, value: Value) -> Self {
        return Self {
            key: k,
            operant: operant,
            value: Some(value),
        };
    }

    pub fn compare(&self, v: &HashMap<String, ValueOf>) -> Option<bool> {
        // keyが合致したものだけ。それ以外はNone
        if let Some(a) = v.get(&self.key) {
            if let Some(Value { value_of: Some(b) }) = &self.value {
                return b.compare_value_of(self.operant.clone(), a);
            }
        }

        return None;
    }
}

pub fn generate_kv(
    key: String,
    value_of: ValueOf,
    operant: Operator,
) -> Result<Kv, Box<dyn Error>> {
    let value = Value::new(value_of);

    return Ok(Kv::new(key, operant, value));
}

#[cfg(test)]
mod tests {
    use std::collections::HashMap;
    use typ_p::typ_p::value::{Operator, Value, ValueOf};
    #[test]
    fn compare() {
        let uuids = vec![
            // ValueOf::UuidValue(uuid::Uuid::new_v4()),
            // ValueOf::UuidValue(uuid::Uuid::new_v4()),
        ];
        let kv = crate::typ_query::kv::generate_kv(
            String::from("uuid"),
            ValueOf::ArrayValue(uuids.clone()),
            String::from("<@"),
        )
        .unwrap();

        {
            let mut v = HashMap::new();
            v.insert(String::from("uuid"), uuids[1].clone());

            assert_eq!(kv.compare(&v), Some(true));
        }

        {
            let mut v = HashMap::new();
            /*
            v.insert(
                String::from("uuid"),
                ValueOf::UuidValue(uuid::Uuid::new_v4()),
            );
             */

            assert_eq!(kv.compare(&v), Some(false));
        }
    }
}
