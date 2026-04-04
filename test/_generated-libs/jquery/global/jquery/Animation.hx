package global.jquery;

/**
	The promise will be resolved when the animation reaches its end, and rejected when terminated early. The context of callbacks attached to the promise will be the element, and the arguments will be the `Animation` object and a boolean `jumpedToEnd` which when true means the animation was stopped with `gotoEnd`, when `undefined` the animation completed naturally.
**/
@:forward
abstract Animation<TElement>(AnimationTypedef<TElement>) from AnimationTypedef<TElement> to AnimationTypedef<TElement> {
	/**
		Access the native `catch` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, 'catch');
		```
	**/
}
