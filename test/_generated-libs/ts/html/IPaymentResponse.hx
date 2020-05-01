package ts.html;
/**
	This Payment Request API interface is returned after a user selects a payment method and approves a payment request.
**/
extern typedef IPaymentResponse = {
	final details : Dynamic;
	final methodName : String;
	final payerEmail : Null<String>;
	final payerName : Null<String>;
	final payerPhone : Null<String>;
	final requestId : String;
	final shippingAddress : Null<IPaymentAddress>;
	final shippingOption : Null<String>;
	function complete(?result:String):ts.lib.IPromise<Void>;
	function toJSON():Dynamic;
};