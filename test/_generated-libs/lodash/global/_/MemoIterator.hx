package global._;

typedef MemoIterator<T, TResult> = (prev:TResult, curr:T, indexOrKey:Dynamic, list:Array<T>) -> TResult;