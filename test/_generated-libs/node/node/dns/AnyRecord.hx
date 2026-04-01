package node.dns;

typedef AnyRecord = ts.AnyOf10<AnyARecord, AnyAaaaRecord, AnyMxRecord, AnyNaptrRecord, AnySoaRecord, AnySrvRecord, AnyTxtRecord, AnyNsRecord, AnyPtrRecord, AnyCnameRecord>;