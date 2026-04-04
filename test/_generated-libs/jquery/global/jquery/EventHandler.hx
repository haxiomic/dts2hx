package global.jquery;

typedef EventHandler<TCurrentTarget, TData> = (t:TriggeredEvent<TCurrentTarget, TData, Dynamic, Dynamic>, args:haxe.extern.Rest<Dynamic>) -> Dynamic;