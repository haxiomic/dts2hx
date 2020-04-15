package unit.types.types;
typedef ObjectAlias = {
	var fieldA : Float;
	var fieldB : Float;
	var fieldArrayAlias : Array<String>;
	@:optional
	var fieldOptional : Float;
	@:native("macro")
	var macro_ : String;
	var nestedTuple : Array<Any>;
	var computedFieldName : String;
	var sub : { var a : Float; var b : Float; };
	var methodProperty : { };
	var readonlyField : String;
};