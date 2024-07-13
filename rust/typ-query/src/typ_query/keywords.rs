use derive_pb::Pb;
use std::collections::HashMap;

use crate::pb::typ_query as pb_typ_query;

use crate::typ_query::Keyword;

use pb_typ_query::Keywords as pb_Keywords;

use typ_p::typ_p::value_of::ValueOf;

#[derive(Debug, Clone, PartialEq, Pb)]
#[pb(pb_name = "pb_Keywords")]
pub struct Keywords {
    pub operant: String,
    pub keywords: Vec<Keyword>,
}

impl Keywords {
    pub fn new(operant: String, keywords: Vec<Keyword>) -> Self {
        return Self {
            operant: operant,
            keywords: keywords,
        };
    }

    pub fn compare(&self, value_of: &HashMap<String, ValueOf>) -> Option<bool> {
        let mut r = vec![];

        for keyword in self.keywords.iter() {
            r.push(keyword.compare(&value_of));
        }

        if self.operant == "AND" {
            for aa in r.iter() {
                if let Some(aa) = aa {
                    if aa == &false {
                        return Some(false);
                    }
                }
            }

            return Some(true);
        } else if self.operant == "OR" {
            let mut has_true = false;
            for aa in r.iter() {
                if let Some(aa) = aa {
                    if aa == &true {
                        has_true = true;
                    }
                }
            }

            if has_true == true {
                return Some(true);
            } else {
                return Some(false);
            }
        } else {
            return Some(false);
        }
    }
}
