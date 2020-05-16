package ds;

import typescript.ts.Symbol;

using tool.TsSymbolTools;

class OnceOnlySymbolQueue {

	final allItemsSeen = new Map<Int, Bool>();
	final currentQueue = new Array<Symbol>();

	public function new() {}

	public function has(item: Symbol) {
		var id = item.getId();
		return allItemsSeen.exists(id);
	}

	/**
		Returns `true` if the item has not been seen before (and therefore added to the queue), and `false` if it has been seen before (and therefore ignored)
	**/
	public function tryEnqueue(item: Symbol): Bool {
		var id = item.getId();
		if (!allItemsSeen.exists(id)) {
			allItemsSeen.set(id, true);
			currentQueue.push(item);
			return true;
		}
		return false;
	}

	public function dequeue(): Null<Symbol> {
		return currentQueue.shift();
	}

	public function empty(): Bool {
		return currentQueue.length == 0;
	}

}