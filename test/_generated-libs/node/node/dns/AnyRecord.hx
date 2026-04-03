package node.dns;

typedef AnyRecord = ts.AnyOf11<AnyARecord, AnyAaaaRecord, AnyCaaRecord, AnyMxRecord, AnyNaptrRecord, AnySoaRecord, AnySrvRecord, AnyTxtRecord, AnyNsRecord, AnyPtrRecord, AnyCnameRecord>;