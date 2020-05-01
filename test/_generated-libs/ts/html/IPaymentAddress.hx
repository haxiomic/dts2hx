package ts.html;
/**
	This Payment Request API interface is used to store shipping or payment address information.
**/
extern typedef IPaymentAddress = {
	final addressLine : std.Array<String>;
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
};