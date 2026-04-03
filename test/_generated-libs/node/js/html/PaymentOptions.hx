package js.html;

typedef PaymentOptions = {
	@:optional
	var requestPayerEmail : Bool;
	@:optional
	var requestPayerName : Bool;
	@:optional
	var requestPayerPhone : Bool;
	@:optional
	var requestShipping : Bool;
	@:optional
	var shippingType : PaymentShippingType;
};