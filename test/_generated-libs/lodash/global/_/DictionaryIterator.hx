package global._;

typedef DictionaryIterator<T, TResult> = (value:T, key:String, collection:Dictionary<T>) -> TResult;