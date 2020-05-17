package global.jquery;

typedef Tween<TElement> = {
	/**
		The easing used
	**/
	var easing : String;
	/**
		The element being animated
	**/
	var elem : TElement;
	/**
		The ending value of the tween
	**/
	var end : Float;
	/**
		The current value of the tween
	**/
	var now : Float;
	/**
		A reference to the animation options
	**/
	var options : EffectsOptions<TElement>;
	@:optional
	var pos : Float;
	/**
		The property being animated
	**/
	var prop : String;
	/**
		The starting value of the tween
	**/
	var start : Float;
	/**
		The CSS unit for the tween
	**/
	var unit : String;
	/**
		Reads the current value for property from the element
	**/
	function cur():Dynamic;
	/**
		Updates the value for the property on the animated elemd.
	**/
	function run(progress:Float):Tween<TElement>;
};