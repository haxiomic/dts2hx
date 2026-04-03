package js.lib;

/**
	Recursively unwraps the "awaited type" of a type. Non-promise "thenables" should resolve to `never`. This emulates the behavior of `await`.
**/
typedef Awaited<T> = Dynamic;