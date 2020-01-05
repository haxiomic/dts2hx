package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4667:5
**/

typedef Watch<T> = {
	/**
	Synchronize with host and get updated program
	**/
	function getProgram(): T;
	/**
	Closes the watch
	**/
	function close(): Void;
}

