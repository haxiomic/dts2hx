package global._;

typedef MemoVoidDictionaryIterator<T, TResult> = (acc:TResult, curr:T, key:String, dict:Dictionary<T>) -> Void;