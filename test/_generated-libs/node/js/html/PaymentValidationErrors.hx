package js.html;

typedef PaymentValidationErrors = {
	@:optional
	var error : String;
	@:optional
	var payer : PayerErrors;
	@:optional
	var shippingAddress : AddressErrors;
};