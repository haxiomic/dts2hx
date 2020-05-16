package ds;

/**
	An item can only be added to a once-only queue once in its lifetime.
	q.tryEnqueue(item);
	q.dequeue(); // -> item
	q.tryEnqueue(item); // does not queue item because it's already been queued once before
	q.dequeue(); // -> null
**/
class OnceOnlyQueue<T> {

	final allItemsSeen = new Array<T>();
	final currentQueue = new Array<T>();

	public function new() {}

	public function has(item: T) {
		return allItemsSeen.indexOf(item) != -1;
	}

	/**
		Returns `true` if the item has not been seen before (and therefore added to the queue), and `false` if it has been seen before (and therefore ignored)
	**/
	public function tryEnqueue(item: T): Bool {
		if (allItemsSeen.indexOf(item) == -1) {
			allItemsSeen.push(item);
			currentQueue.push(item);
			return true;
		}
		return false;
	}

	public function dequeue(): Null<T> {
		return currentQueue.shift();
	}

	public function empty(): Bool {
		return currentQueue.length == 0;
	}

}