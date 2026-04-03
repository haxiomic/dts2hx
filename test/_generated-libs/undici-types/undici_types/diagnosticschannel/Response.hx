package undici_types.diagnosticschannel;

typedef Response = {
	var statusCode : Float;
	var statusText : String;
	var headers : Array<global.Buffer<js.lib.ArrayBufferLike>>;
};