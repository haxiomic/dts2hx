package js.lib;

typedef StringConstructor = {
	@:selfCall
	function call(?value:Dynamic):String;
	final prototype : String;
	function fromCharCode(codes:haxe.extern.Rest<Float>):String;
	/**
		Return the String value whose elements are, in order, the elements in the List elements.
		If length is 0, the empty string is returned.
	**/
	function fromCodePoint(codePoints:haxe.extern.Rest<Float>):String;
	/**
		String.raw is usually used as a tag function of a Tagged Template String. When called as
		such, the first argument will be a well formed template call site object and the rest
		parameter will contain the substitution values. It can also be called directly, for example,
		to interleave strings and values from your own tag function, and in this case the only thing
		it needs from the first argument is the raw property.
	**/
	function raw(template:{ var raw : ts.AnyOf2<haxe.ds.ReadOnlyArray<String>, ArrayLike<String>>; }, substitutions:haxe.extern.Rest<Dynamic>):String;
};