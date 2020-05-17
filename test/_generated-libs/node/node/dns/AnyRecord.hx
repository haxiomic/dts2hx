package node.dns;

typedef AnyRecord = ts.AnyOf10<AnyARecord, AnyAaaaRecord, AnyCnameRecord, AnyMxRecord, AnyNaptrRecord, AnyNsRecord, AnyPtrRecord, AnySoaRecord, AnySrvRecord, AnyTxtRecord>;