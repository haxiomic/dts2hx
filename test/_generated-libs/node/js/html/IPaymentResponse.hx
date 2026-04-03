package js.html;

/**
	The **`PaymentResponse`** interface of the Payment Request API is returned after a user selects a payment method and approves a payment request.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse)
**/
typedef IPaymentResponse = {
	/**
		The **`details`** read-only property of the provides a payment method specific message used by the merchant to process the transaction and determine a successful funds transfer.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/details)
	**/
	final details : Dynamic;
	/**
		The **`methodName`** read-only property of the PaymentResponse interface returns a string uniquely identifying the payment handler selected by the user.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/methodName)
	**/
	final methodName : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/payerdetailchange_event)
	**/
	@:optional
	dynamic function onpayerdetailchange(ev:PaymentRequestUpdateEvent):Dynamic;
	/**
		The `payerEmail` read-only property of the PaymentResponse interface returns the email address supplied by the user.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/payerEmail)
	**/
	final payerEmail : Null<String>;
	/**
		The **`payerName`** read-only property of the option is only present when the `requestPayerName` option is set to `true` in the options parameter of the A string containing the payer name.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/payerName)
	**/
	final payerName : Null<String>;
	/**
		The `payerPhone` read-only property of the PaymentResponse interface returns the phone number supplied by the user.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/payerPhone)
	**/
	final payerPhone : Null<String>;
	/**
		The **`requestId`** read-only property of the the `PaymentResponse()` constructor by details.id.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/requestId)
	**/
	final requestId : String;
	/**
		The **`shippingAddress`** read-only property of the `PaymentRequest` interface returns a PaymentAddress object containing the shipping address provided by the user.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/shippingAddress)
	**/
	final shippingAddress : Null<PaymentAddress>;
	/**
		The **`shippingOption`** read-only property of the `PaymentRequest` interface returns the ID attribute of the shipping option selected by the user.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/shippingOption)
	**/
	final shippingOption : Null<String>;
	/**
		The PaymentRequest method **`complete()`** of the Payment Request API notifies the user interface to be closed.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/complete)
	**/
	function complete(?result:PaymentComplete):js.lib.Promise<ts.Undefined>;
	/**
		The PaymentResponse interface's **`retry()`** method makes it possible to ask the user to retry a payment after an error occurs during processing.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/retry)
	**/
	function retry(?errorFields:PaymentValidationErrors):js.lib.Promise<ts.Undefined>;
	/**
		The **`toJSON()`** method of the PaymentResponse interface is a Serialization; it returns a JSON representation of the PaymentResponse object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse/toJSON)
	**/
	function toJSON():Dynamic;
	/**
		The **`addEventListener()`** method of the EventTarget interface sets up a function that will be called whenever the specified event is delivered to the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/addEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
	function addEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		The **`removeEventListener()`** method of the EventTarget interface removes an event listener previously registered with EventTarget.addEventListener() from the target.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/removeEventListener)
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
	function removeEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	/**
		The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
	**/
	function dispatchEvent(event:js.html.Event):Bool;
};