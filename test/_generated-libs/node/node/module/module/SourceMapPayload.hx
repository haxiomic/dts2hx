package node.module.module;

typedef SourceMapPayload = {
	var file : String;
	var version : Float;
	var sources : Array<String>;
	var sourcesContent : Array<String>;
	var names : Array<String>;
	var mappings : String;
	var sourceRoot : String;
};