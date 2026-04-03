package undici_types.diagnosticschannel;

typedef RequestTrailersMessage = {
	var request : Request;
	var trailers : Array<global.Buffer<js.lib.ArrayBufferLike>>;
};