package js.lib;

typedef PromiseFulfilledResult<T> = {
	var status : String;
	var value : T;
};