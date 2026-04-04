package global.jquery;

/**
	Represents the completion of an asynchronous operation
**/
@:forward
abstract _Promise<T>(_PromiseTypedef<T>) from _PromiseTypedef<T> to _PromiseTypedef<T> {
	/**
		Access the native `catch` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'catch');
		```
	**/
}
