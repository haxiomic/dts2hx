package ts.html;
@:native("RTCIdentityAssertion") extern class RTCIdentityAssertion {
	function new(idp:String, name:String);
	var idp : String;
	var name : String;
	static var prototype : IRTCIdentityAssertion;
}