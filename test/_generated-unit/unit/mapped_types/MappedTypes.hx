package unit.mapped_types;

/**
	Mapped type coverage: Record, Partial, Readonly, Pick, Omit
	and nested combinations.
	Tests the getTsTypeOfField fallback chain (TS 3.9+).
**/
@:jsRequire("./unit/mapped-types", "MappedTypes") @valueModuleOnly extern class MappedTypes {
	static final rec : {
		var x : Float;
		var y : Float;
		var z : Float;
	};
	static final partial : {
		@:optional
		var a : Float;
		@:optional
		var b : String;
		@:optional
		var c : Bool;
	};
	static final readonly_ : {
		final a : Float;
		final b : String;
	};
	static final nested : {
		final x : Bool;
		final y : Bool;
		final z : Bool;
	};
	static final deep : {
		final value : Float;
		final nested : {
			var a : Bool;
			var b : Bool;
		};
	};
}