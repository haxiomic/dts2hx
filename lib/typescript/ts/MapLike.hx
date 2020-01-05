package typescript.ts;


/**
Type of objects whose values are all of the same type.
The `in` and `for-in` operators can *not* be safely used,
since `Object.prototype` may be modified by outside code.

Generated from: test-definitions/typescript/typescript-extended.d.ts:27:5
**/

typedef MapLike<T> = haxe.DynamicAccess<T>;



