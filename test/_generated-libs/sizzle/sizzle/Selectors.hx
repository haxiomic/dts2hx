package sizzle;

typedef Selectors = {
	var cacheLength : Float;
	var match : sizzle.selectors.Matches;
	var find : sizzle.selectors.FindFunctions;
	var preFilter : sizzle.selectors.PreFilterFunctions;
	var filter : sizzle.selectors.FilterFunctions;
	var attrHandle : sizzle.selectors.AttrHandleFunctions;
	var pseudos : sizzle.selectors.PseudoFunctions;
	var setFilters : sizzle.selectors.SetFilterFunctions;
	function createPseudo(fn:sizzle.selectors.CreatePseudoFunction):sizzle.selectors.PseudoFunction;
};