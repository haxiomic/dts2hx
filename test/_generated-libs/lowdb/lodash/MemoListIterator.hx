package lodash;

typedef MemoListIterator<T, TResult, TList> = (prev:TResult, curr:T, index:Float, list:TList) -> TResult;