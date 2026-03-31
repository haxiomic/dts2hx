package unit.tuples;

/**
	Tuple type coverage including TS 4.0 features:
	labeled tuples, rest elements, variadic positions.
**/
@:jsRequire("./unit/tuples", "Tuples") @valueModuleOnly extern class Tuples {
	static function takesTuple(args:ts.Tuple2<String, Float>):Void;
	static function takesLabeledTuple(args:ts.Tuple2<String, Float>):Void;
	static function returnsTuple():ts.Tuple2<String, Float>;
	static function spreadTuple(args_0:Dynamic, args_1:Dynamic, args_2:Dynamic):Void;
	static function spreadLabeled(name:Dynamic, age:Dynamic):Void;
	static final pair : unit.tuples.tuples.Pair;
	static final labeled : unit.tuples.tuples.Labeled;
	static final withRest : unit.tuples.tuples.WithRest;
	static final nested : unit.tuples.tuples.Nested;
}