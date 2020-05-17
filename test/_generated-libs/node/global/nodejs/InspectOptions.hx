package global.nodejs;

typedef InspectOptions = {
	/**
		If set to `true`, getters are going to be
		inspected as well. If set to `'get'` only getters without setter are going
		to be inspected. If set to `'set'` only getters having a corresponding
		setter are going to be inspected. This might cause side effects depending on
		the getter function.
	**/
	@:optional
	var getters : ts.AnyOf2<Bool, String>;
	@:optional
	var showHidden : Bool;
	@:optional
	var depth : Float;
	@:optional
	var colors : Bool;
	@:optional
	var customInspect : Bool;
	@:optional
	var showProxy : Bool;
	@:optional
	var maxArrayLength : Float;
	@:optional
	var breakLength : Float;
	/**
		Setting this to `false` causes each object key
		to be displayed on a new line. It will also add new lines to text that is
		longer than `breakLength`. If set to a number, the most `n` inner elements
		are united on a single line as long as all properties fit into
		`breakLength`. Short array elements are also grouped together. Note that no
		text will be reduced below 16 characters, no matter the `breakLength` size.
		For more information, see the example below.
	**/
	@:optional
	var compact : ts.AnyOf2<Float, Bool>;
	@:optional
	var sorted : ts.AnyOf2<Bool, (a:String, b:String) -> Float>;
};