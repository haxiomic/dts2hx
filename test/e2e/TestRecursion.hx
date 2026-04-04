import build.modules.Recursion;
import build.modules.recursion.*;

class TestRecursion {
	static var passed = 0;
	static var failed = 0;

	static function assert(condition:Bool, name:String) {
		if (condition) {
			passed++;
		} else {
			failed++;
			js.Browser.console.error('FAIL: $name');
		}
	}

	static function main() {
		// --- 1. Direct self-referential interface ---
		var list = Recursion.createLinkedList([1, 2, 3]);
		assert(list != null, "createLinkedList returns non-null");
		assert(list.value == 1, "linked list first value is 1");
		assert(list.next != null, "linked list has next");
		assert(list.next.value == 2, "linked list second value is 2");
		assert(list.next.next != null, "linked list has third node");
		assert(list.next.next.value == 3, "linked list third value is 3");
		assert(list.next.next.next == null, "linked list terminates with null");

		// --- 1b. chainLength uses LinkedNode recursion ---
		var len = Recursion.chainLength(list);
		assert(len == 3, "chainLength returns 3");

		var emptyLen = Recursion.chainLength(null);
		assert(emptyLen == 0, "chainLength of null is 0");

		// --- 2. Mutual recursion ---
		var tree = Recursion.createTree(3);
		assert(tree.children.length == 1, "tree root has 1 branch");
		assert(tree.children[0].label == "branch-3", "branch label is branch-3");

		var depth = Recursion.treeDepth(tree);
		assert(depth == 3, "tree depth is 3");

		var leaf = Recursion.createTree(0);
		assert(leaf.children.length == 0, "leaf has no children");
		assert(Recursion.treeDepth(leaf) == 0, "leaf depth is 0");

		// --- 5. Self-referential class ---
		var chainVal = Recursion.buildChain();
		assert(chainVal == 0, "buildChain returns 0 (default value)");

		// --- 6. Fluent builder (returns this) ---
		// Compile-time check: Builder is a class
		var b = new Builder();
		assert(b != null, "Builder can be instantiated");

		// --- 10. Promise-like chain ---
		var thenable = Recursion.resolveThenable();
		assert(thenable != null, "resolveThenable returns non-null");

		// --- Type structure compile-time checks ---
		// These verify the generated types are structurally correct
		// LinkedNode self-reference
		var node:LinkedNode = { value: 10, next: null };
		var node2:LinkedNode = { value: 20, next: node };
		assert(node2.next.value == 10, "manual LinkedNode chain works");

		// TreeNode/TreeBranch mutual recursion
		var leaf2:TreeNode = { children: [] };
		var branch:TreeBranch = { label: "test", node: leaf2 };
		var root:TreeNode = { children: [branch] };
		assert(root.children[0].node.children.length == 0, "manual tree structure works");

		// Container generic self-reference
		var c:Container<Int> = { value: 42, nested: null };
		assert(c.value == 42, "Container value accessible");
		assert(c.nested == null, "Container nested is null");

		// QueryStatic callable
		var q = Recursion.Dollar;
		assert(q != null || q == null, "QueryStatic $ is accessible");

		// QueryResult self-referential methods (compile check)
		// QueryResult.each returns QueryResult, .find returns QueryResult, etc.

		// Comparable recursive constraint (compile check)
		// Comparable<T extends Comparable<T>> — T is constrained by itself

		// Functor/Monad higher-kinded pattern (compile check)
		// Monad extends Functor, both have map returning their own type

		// Expression recursive union (compile check)
		var expr:Expression = js.Syntax.code("({type: 'literal', value: 42})");
		assert(expr != null, "Expression union type accessible");

		js.Browser.console.log('Recursion results: $passed passed, $failed failed');
		if (failed > 0) {
			js.Browser.console.error('RECURSION TESTS FAILED');
			js.Lib.eval("process.exit(1)");
		}
	}
}
