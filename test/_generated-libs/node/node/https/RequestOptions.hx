package node.https;

typedef RequestOptions = node.http.RequestOptions & node.tls.SecureContextOptions & {
	@:optional
	var rejectUnauthorized : Bool;
	@:optional
	var servername : String;
};