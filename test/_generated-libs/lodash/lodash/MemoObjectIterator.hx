package lodash;

typedef MemoObjectIterator<T, TResult, TList> = (prev:TResult, curr:T, key:String, list:TList) -> TResult;