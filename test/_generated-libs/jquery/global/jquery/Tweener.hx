package global.jquery;

/**
	A "Tweener" is a function responsible for creating a tween object, and you might want to override these if you want to implement complex values ( like a clip/transform array matrix ) in a single property.
**/
typedef Tweener<TElement> = (propName:String, finalValue:Float) -> Tween<TElement>;