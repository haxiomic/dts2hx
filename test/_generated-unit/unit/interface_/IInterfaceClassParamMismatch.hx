package unit.interface_;

/**
	reproducing issue with react Component
**/
typedef IInterfaceClassParamMismatch<P, S, SS> = {
	var interfaceFieldP : P;
	var interfaceFieldS : S;
	var interfaceFieldSS : SS;
	var classFieldP : P;
	var classFieldS : S;
};