package ds;

using Lambda;

@:using(Lambda)
@:forward(iterator) abstract Set<T>(Array<T>) {

	public inline function new(?input: Array<T>) {
		this = [];
		if (input != null) {
			for (item in input) add(item);
		}
	}

	public inline function has(item: T) {
		return this.indexOf(item) != -1;
	}

	public inline function add(item: T) {
		if (!has(item)) {
			this.push(item);
		}
	}

	public inline function remove(item: T) {
		this.remove(item);
	}

	public inline function toArray() {
		return this.copy();
	}

}