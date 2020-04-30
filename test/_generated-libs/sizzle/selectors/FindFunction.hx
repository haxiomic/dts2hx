package sizzle.selectors;
extern typedef FindFunction = {
	@:selfCall
	function call(match:ts.lib.RegExpMatchArray, context:haxe.extern.EitherType<ts.html.IDocument, ts.html.IElement>, isXML:Bool):haxe.extern.EitherType<Void, std.Array<ts.html.IElement>>;
};