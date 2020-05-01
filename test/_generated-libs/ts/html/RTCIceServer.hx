package ts.html;
extern typedef RTCIceServer = {
	@:optional
	var credential : ts.AnyOf2<String, RTCOAuthCredential>;
	@:optional
	var credentialType : String;
	var urls : ts.AnyOf2<String, std.Array<String>>;
	@:optional
	var username : String;
};