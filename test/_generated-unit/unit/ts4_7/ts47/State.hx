package unit.ts4_7.ts47;

typedef State<T> = {
	function get():T;
	function set(value:T):Void;
};