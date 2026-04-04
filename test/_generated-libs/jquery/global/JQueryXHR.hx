package global;

@:forward
abstract JQueryXHR(JQueryXHRTypedef) from JQueryXHRTypedef to JQueryXHRTypedef {
	/**
		Access the native `catch` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'catch');
		```
	**/
}
