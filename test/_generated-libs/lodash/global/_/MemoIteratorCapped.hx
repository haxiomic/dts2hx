package global._;

typedef MemoIteratorCapped<T, TResult> = (prev:TResult, curr:T) -> TResult;