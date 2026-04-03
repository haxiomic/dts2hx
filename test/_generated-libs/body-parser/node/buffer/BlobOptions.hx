package node.buffer;

typedef BlobOptions = {
	/**
		One of either `'transparent'` or `'native'`. When set to `'native'`, line endings in string source parts
		will be converted to the platform native line-ending as specified by `import { EOL } from 'node:node:os'`.
	**/
	@:optional
	var endings : String;
	/**
		The Blob content-type. The intent is for `type` to convey
		the MIME media type of the data, however no validation of the type format
		is performed.
	**/
	@:optional
	var type : String;
};