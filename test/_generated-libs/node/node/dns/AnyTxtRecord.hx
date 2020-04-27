package node.dns;
extern interface AnyTxtRecord {
	var type : String;
	var entries : std.Array<String>;
}