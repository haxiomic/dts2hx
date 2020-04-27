package node.querystring;
extern typedef ParseOptions = { @:optional
	var maxKeys : Float; @:optional
	var decodeURIComponent : (str:String) -> String; };