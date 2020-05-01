package ts.html;
/**
	This Payment Request API interface enables a web page to update the details of a PaymentRequest in response to a user action.
**/
@:native("PaymentRequestUpdateEvent") extern class PaymentRequestUpdateEvent {
	function new(type:String, ?eventInitDict:PaymentRequestUpdateEventInit);
	function updateWith(detailsPromise:ts.AnyOf2<PaymentDetailsUpdate, ts.lib.IPromise<PaymentDetailsUpdate>>):Void;
	static var prototype : IPaymentRequestUpdateEvent;
}