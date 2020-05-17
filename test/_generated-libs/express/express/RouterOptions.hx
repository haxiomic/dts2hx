package express;

typedef RouterOptions = {
	/**
		Enable case sensitivity.
	**/
	@:optional
	var caseSensitive : Bool;
	/**
		Preserve the req.params values from the parent router.
		If the parent and the child have conflicting param names, the child’s value take precedence.
	**/
	@:optional
	var mergeParams : Bool;
	/**
		Enable strict routing.
	**/
	@:optional
	var strict : Bool;
};