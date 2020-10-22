package lowdb;

typedef LowdbBase<SchemaT> = {
	dynamic function getState():SchemaT;
	dynamic function setState(state:SchemaT):LowdbBase<SchemaT>;
};