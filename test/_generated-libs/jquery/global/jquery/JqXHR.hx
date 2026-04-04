package global.jquery;

@:forward
abstract JqXHR<TResolve>(JqXHRTypedef<TResolve>) from JqXHRTypedef<TResolve> to JqXHRTypedef<TResolve> {
	/**
		Access the native `catch` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'catch');
		```
	**/
}
