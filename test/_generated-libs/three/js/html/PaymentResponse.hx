package js.html;
/**
	This Payment Request API interface is returned after a user selects a payment method and approves a payment request.
**/
@:native("PaymentResponse") extern class PaymentResponse {
	function new();
	final details : Any;
	final methodName : String;
	final payerEmail : Null<String>;
	final payerName : Null<String>;
	final payerPhone : Null<String>;
	final requestId : String;
	final shippingAddress : Null<IPaymentAddress>;
	final shippingOption : Null<String>;
	function complete(?result:String):js.lib.IPromise<Void>;
	function toJSON():Any;
	static var prototype : IPaymentResponse;
}