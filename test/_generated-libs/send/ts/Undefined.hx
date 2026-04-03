package ts;

/**
	`Undefined` corresponds to `void` in TypeScript; in haxe `Void` cannot be used as a field type (only function return) so we must use `Any` instead. This alias serves as documentation that the type is `void` and therefore value is `undefined`
**/
typedef Undefined = Any;