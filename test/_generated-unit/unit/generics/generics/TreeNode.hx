package unit.generics.generics;

typedef TreeNode<T> = {
	var value : T;
	var children : Array<TreeNode<T>>;
};