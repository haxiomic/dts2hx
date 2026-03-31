package global._;

typedef DictionaryIteratorTypeGuard<T, S:(T)> = (value:T, key:String, collection:Dictionary<T>) -> Bool;