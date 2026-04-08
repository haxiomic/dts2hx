package js.lib;

/**
	Represents the completion of an asynchronous operation
**/
@:forward
abstract IPromise<T>(IPromiseTypedef<T>) from IPromiseTypedef<T> to IPromiseTypedef<T> {
	/**
		Access the native `catch` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'catch');
		```
	**/
}
