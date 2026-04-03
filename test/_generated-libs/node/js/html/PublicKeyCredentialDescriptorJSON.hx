package js.html;

typedef PublicKeyCredentialDescriptorJSON = {
	var id : String;
	@:optional
	var transports : Array<String>;
	var type : String;
};