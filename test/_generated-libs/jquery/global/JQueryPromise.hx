package global;

@:forward
abstract JQueryPromise<T>(JQueryPromiseTypedef<T>) from JQueryPromiseTypedef<T> to JQueryPromiseTypedef<T> {
	/**
		Access the native `catch` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'catch');
		```
	**/
}
