package node.nodecolontest.test.eventdata;

typedef Error = {
	var cause : js.lib.Error;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};