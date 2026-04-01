package unit.types.types;

typedef INode<T> = {
	/**
		To work around #9397, parent type should just be INode<T>
	**/
	var parent : INode<T>;
};