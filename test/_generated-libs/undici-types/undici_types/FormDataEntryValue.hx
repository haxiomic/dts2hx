package undici_types;

/**
	A `string` or `File` that represents a single value from a set of `FormData` key-value pairs.
**/
typedef FormDataEntryValue = ts.AnyOf2<String, File>;