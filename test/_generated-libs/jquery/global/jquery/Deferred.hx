package global.jquery;

@:forward
abstract Deferred<TR, TJ, TN>(DeferredTypedef<TR, TJ, TN>) from DeferredTypedef<TR, TJ, TN> to DeferredTypedef<TR, TJ, TN> {
	/**
		Access the native `catch` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'catch');
		```
	**/
}
