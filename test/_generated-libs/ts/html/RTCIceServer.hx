package ts.html;
typedef RTCIceServer = {
	@:optional
	var credential : ts.AnyOf2<String, RTCOAuthCredential>;
	@:optional
	var credentialType : String;
	var urls : ts.AnyOf2<String, Array<String>>;
	@:optional
	var username : String;
};