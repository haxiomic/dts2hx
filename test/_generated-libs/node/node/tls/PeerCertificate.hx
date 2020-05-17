package node.tls;

typedef PeerCertificate = {
	var subject : Certificate;
	var issuer : Certificate;
	var subjectaltname : String;
	var infoAccess : { };
	var modulus : String;
	var exponent : String;
	var valid_from : String;
	var valid_to : String;
	var fingerprint : String;
	var ext_key_usage : Array<String>;
	var serialNumber : String;
	var raw : global.Buffer;
};