package ts.html;
/**
	This Payment Request API interface is returned after a user selects a payment method and approves a payment request.
**/
@:native("PaymentResponse") extern class PaymentResponse {
	function new();
	final details : Dynamic;
	final methodName : String;
	final payerEmail : Null<String>;
	final payerName : Null<String>;
	final payerPhone : Null<String>;
	final requestId : String;
	final shippingAddress : Null<PaymentAddress>;
	final shippingOption : Null<String>;
	function complete(?result:String):ts.lib.Promise<Void>;
	function toJSON():Dynamic;
	static var prototype : PaymentResponse;
}