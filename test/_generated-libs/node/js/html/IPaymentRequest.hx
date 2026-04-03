package js.html;

/**
	The Payment Request API's **`PaymentRequest`** interface is the primary access point into the API, and lets web content and apps accept payments from the end user on behalf of the operator of the site or the publisher of the app.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentRequest)
**/
typedef IPaymentRequest = {
	/**
		The **`id`** read-only attribute of the When constructing an instance of the PaymentRequest, you are able to supply an custom id.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentRequest/id)
	**/
	final id : String;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentRequest/paymentmethodchange_event)
	**/
	@:optional
	dynamic function onpaymentmethodchange(ev:PaymentMethodChangeEvent):Dynamic;
	@:optional
	dynamic function onshippingaddresschange(ev:PaymentRequestUpdateEvent):Dynamic;
	@:optional
	dynamic function onshippingoptionchange(ev:PaymentRequestUpdateEvent):Dynamic;
	/**
		The **`shippingAddress`** read-only property of the PaymentRequest interface returns the shipping address provided by the user.
	**/
	final shippingAddress : Null<PaymentAddress>;
	/**
		The **`shippingOption`** read-only attribute of the PaymentRequest interface returns either the id of a selected shipping option, null (if no shipping option was set to be selected) or a shipping option selected by the user.
	**/
	final shippingOption : Null<String>;
	/**
		The **`shippingType`** read-only property of the `'delivery'`, `'pickup'`, or `null` if one was not provided by the constructor.
	**/
	final shippingType : Null<PaymentShippingType>;
	/**
		The `PaymentRequest.abort()` method of the PaymentRequest interface causes the user agent to end the payment request and to remove any user interface that might be shown.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentRequest/abort)
	**/
	function abort():js.lib.Promise<ts.Undefined>;
	/**
		The PaymentRequest method **`canMakePayment()`** determines whether or not the request is configured in a way that is compatible with at least one payment method supported by the user agent.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentRequest/canMakePayment)
	**/
	function canMakePayment():js.lib.Promise<Bool>;
	/**
		The **PaymentRequest** interface's **`show()`** method instructs the user agent to begin the process of showing and handling the user interface for the payment request to the user.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentRequest/show)
	**/
	function show(?detailsPromise:ts.AnyOf2<PaymentDetailsUpdate, js.lib.PromiseLike<PaymentDetailsUpdate>>):js.lib.Promise<PaymentResponse>;
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