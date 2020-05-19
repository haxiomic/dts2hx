package vue;

typedef PluginObject<T> = {
	dynamic function install(Vue:VueConstructor<Vue>, ?options:T):Void;
};