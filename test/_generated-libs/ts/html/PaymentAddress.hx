package ts.html;
/**
	This Payment Request API interface is used to store shipping or payment address information.
**/
@:native("PaymentAddress") extern class PaymentAddress {
	function new();
	final addressLine : Array<String>;
	final city : String;
	final country : String;
	final dependentLocality : String;
	final languageCode : String;
	final organization : String;
	final phone : String;
	final postalCode : String;
	final recipient : String;
	final region : String;
	final sortingCode : String;
	function toJSON():Dynamic;
	static var prototype : IPaymentAddress;
}