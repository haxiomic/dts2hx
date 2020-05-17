package node.inspector.runtime;

/**
	Primitive value which cannot be JSON-stringified. Includes values `-0`, `NaN`, `Infinity`,
	`-Infinity`, and bigint literals.
**/
typedef UnserializableValue = String;