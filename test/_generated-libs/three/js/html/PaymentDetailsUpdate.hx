package js.html;
extern typedef PaymentDetailsUpdate = PaymentDetailsBase & { @:optional
	var error : String; @:optional
	var total : PaymentItem; };