package global.jquery;
typedef Selectors = {
	@:native(":")
	var Colon : sizzle.selectors.PseudoFunctions;
	var filter : sizzle.selectors.FilterFunctions;
	var cacheLength : Float;
	var match : sizzle.selectors.Matches;
	var find : sizzle.selectors.FindFunctions;
	var preFilter : sizzle.selectors.PreFilterFunctions;
	var attrHandle : sizzle.selectors.AttrHandleFunctions;
	var pseudos : sizzle.selectors.PseudoFunctions;
	var setFilters : sizzle.selectors.SetFilterFunctions;
	function createPseudo(fn:sizzle.selectors.CreatePseudoFunction):sizzle.selectors.PseudoFunction;
};