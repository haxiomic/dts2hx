package node.inspector;
extern interface InspectorNotification<T> {
	var method : String;
	var params : T;
}