package js.html;

typedef PaymentDetailsUpdate = {
	@:optional
	var error : String;
	@:optional
	var paymentMethodErrors : Dynamic;
	@:optional
	var shippingAddressErrors : AddressErrors;
	@:optional
	var total : PaymentItem;
	@:optional
	var displayItems : Array<PaymentItem>;
	@:optional
	var modifiers : Array<PaymentDetailsModifier>;
	@:optional
	var shippingOptions : Array<PaymentShippingOption>;
};