package vue.types.options;

/**
	This type should be used when an array of strings is used for a component's `props` value.
**/
typedef ThisTypedComponentOptionsWithArrayProps<V:(Vue), Data, Methods, Computed, PropNames:(String)> = vue.ComponentOptionsTypedef<V, DataDef<Data, { }, V>, Methods, Computed, Array<PropNames>, { }> & js.lib.ThisType<vue.types.vue.CombinedVueInstance<V, Data, Methods, Computed, { }>>;