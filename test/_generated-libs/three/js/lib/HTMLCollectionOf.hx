package js.lib;
extern typedef HTMLCollectionOf<T:(js.html.Element)> = HTMLCollectionBase & { /**
		Retrieves an object from various collections.
	**/
	function item(index:Float):Null<T>; function namedItem(name:String):Null<T>; };