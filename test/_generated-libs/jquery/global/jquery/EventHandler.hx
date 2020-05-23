package global.jquery;

typedef EventHandler<TCurrentTarget, TData> = EventHandlerBase<TCurrentTarget, TriggeredEvent<TCurrentTarget, TData, Dynamic, Dynamic>>;