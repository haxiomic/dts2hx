package node;

typedef ParseArgsOptionConfigTypedef = {
	/**
		Type of argument.
	**/
	var type : String;
	/**
		Whether this option can be provided multiple times.
		If `true`, all values will be collected in an array.
		If `false`, values for the option are last-wins.
	**/
	@:optional
	var multiple : Bool;
	/**
		A single character alias for the option.
	**/
	@:optional
	var short : String;
	/**
		The default option value when it is not set by args.
		It must be of the same type as the the `type` property.
		When `multiple` is `true`, it must be an array.
	**/
	@:optional
	@:native("default")
	var default_ : ts.AnyOf4<String, Bool, Array<String>, Array<Bool>>;
};