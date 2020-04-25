package global.nodejs;
extern interface InspectOptions {
	/**
		If set to `true`, getters are going to be
		inspected as well. If set to `'get'` only getters without setter are going
		to be inspected. If set to `'set'` only getters having a corresponding
		setter are going to be inspected. This might cause side effects depending on
		the getter function.
	**/
	@:optional
	var getters : Null<haxe.extern.EitherType<Bool, String>>;
	@:optional
	var showHidden : Null<Bool>;
	@:optional
	var depth : Null<Float>;
	@:optional
	var colors : Null<Bool>;
	@:optional
	var customInspect : Null<Bool>;
	@:optional
	var showProxy : Null<Bool>;
	@:optional
	var maxArrayLength : Null<Float>;
	@:optional
	var breakLength : Null<Float>;
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
	var compact : Null<haxe.extern.EitherType<Float, Bool>>;
	@:optional
	var sorted : Null<haxe.extern.EitherType<Bool, (a:String, b:String) -> Float>>;
}