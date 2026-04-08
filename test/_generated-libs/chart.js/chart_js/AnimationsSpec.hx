package chart_js;

typedef AnimationsSpec<TType:(String)> = haxe.DynamicAccess<ts.AnyOf2<Bool, AnimationSpec<TType> & {
	var properties : Array<String>;
	/**
		Type of property, determines the interpolator used. Possible values: 'number', 'color' and 'boolean'. Only really needed for 'color', because typeof does not get that right.
	**/
	var type : String;
	dynamic function fn<T>(from:T, to:T, factor:Float):T;
	/**
		Start value for the animation. Current value is used when undefined
	**/
	var from : Scriptable<ts.AnyOf5<String, Float, Bool, js.html.CanvasGradient, js.html.CanvasPattern>, ScriptableContext<TType>>;
	var to : Scriptable<ts.AnyOf5<String, Float, Bool, js.html.CanvasGradient, js.html.CanvasPattern>, ScriptableContext<TType>>;
}>>;