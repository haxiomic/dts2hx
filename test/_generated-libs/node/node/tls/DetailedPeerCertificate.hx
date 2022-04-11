package node.tls;

typedef DetailedPeerCertificate = {
	var issuerCertificate : DetailedPeerCertificate;
	var subject : Certificate;
	var issuer : Certificate;
	var subjectaltname : String;
	var infoAccess : haxe.DynamicAccess<Null<Array<String>>>;
	var modulus : String;
	var exponent : String;
	var valid_from : String;
	var valid_to : String;
	var fingerprint : String;
	var ext_key_usage : Array<String>;
	var serialNumber : String;
	var raw : global.Buffer;
};