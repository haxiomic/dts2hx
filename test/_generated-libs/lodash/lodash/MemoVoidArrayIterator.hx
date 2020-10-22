package lodash;

typedef MemoVoidArrayIterator<T, TResult> = (acc:TResult, curr:T, index:Float, arr:Array<T>) -> Void;