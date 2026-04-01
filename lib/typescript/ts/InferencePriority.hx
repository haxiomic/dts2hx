package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2507:5
**/
@:native('ts.InferencePriority')
extern enum abstract InferencePriority(Int) from Int to Int {
	var NakedTypeVariable;
	var HomomorphicMappedType;
	var PartialHomomorphicMappedType;
	var MappedTypeConstraint;
	var ReturnType;
	var LiteralKeyof;
	var NoConstraints;
	var AlwaysStrict;
	var MaxValue;
	var PriorityImpliesCombination;
	var Circularity;
}

