package node.child_process;

@:forward
abstract PromiseWithChild<T>(PromiseWithChildTypedef<T>) from PromiseWithChildTypedef<T> to PromiseWithChildTypedef<T> {
	/**
		Access the native `catch` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'catch');
		```
	**/
}
