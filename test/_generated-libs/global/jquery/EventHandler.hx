package global.jquery;
typedef EventHandler<TCurrentTarget, TData> = (t:TriggeredEvent<TCurrentTarget, TData, Any, Any>, args:haxe.extern.Rest<Any>) -> Any;