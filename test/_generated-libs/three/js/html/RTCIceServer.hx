package js.html;
extern typedef RTCIceServer = {
	@:optional
	var credential : haxe.extern.EitherType<String, RTCOAuthCredential>;
	@:optional
	var credentialType : String;
	var urls : haxe.extern.EitherType<String, std.Array<String>>;
	@:optional
	var username : String;
};