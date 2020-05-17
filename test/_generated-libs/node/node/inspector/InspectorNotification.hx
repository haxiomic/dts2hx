package node.inspector;

typedef InspectorNotification<T> = {
	var method : String;
	var params : T;
};