package lodash;

typedef MemoIteratorCapped<T, TResult> = (prev:TResult, curr:T) -> TResult;