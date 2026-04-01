package ts;

/**
	Wraps an anonymous structure typedef so that `@:native` field metadata works correctly.

	Haxe ignores `@:native` on anonymous structure fields (issue #5105). This type uses
	`@:genericBuild` to generate an abstract wrapper with property accessors that use
	`Reflect.field`/`Reflect.setField` for fields with `@:native` metadata, so they
	map to the correct JavaScript property names at runtime.

	Usage: instead of `MyTypedef`, use `AbstractAnon<MyTypedef>`.
**/
@:genericBuild(ts.abstractanon.Macro.build())
class AbstractAnon<T> {}
