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
		var a : Float;
		var b : String;
	};
	static final nested : {
		var x : Bool;
		var y : Bool;
		var z : Bool;
	};
	static final deep : {
		var value : Float;
		var nested : {
			var a : Bool;
			var b : Bool;
		};
	};
}