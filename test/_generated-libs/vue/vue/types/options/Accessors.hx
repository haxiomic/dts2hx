package vue.types.options;

/**
	When the `Computed` type parameter on `ComponentOptions` is inferred,
	it should have a property with the return type of every get-accessor.
	Since there isn't a way to query for the return type of a function, we allow TypeScript
	to infer from the shape of `Accessors<Computed>` and work backwards.
**/
typedef Accessors<T> = Dynamic;