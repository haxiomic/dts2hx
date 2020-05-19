package vue.types.options;

/**
	This type should be used when an array of strings is used for a component's `props` value.
**/
typedef ThisTypedComponentOptionsWithArrayProps<V, Data, Methods, Computed, PropNames> = vue.ComponentOptions<V, DataDef<Data, { }, V>, Methods, Computed, Array<PropNames>, { }> & js.lib.ThisType<vue.types.vue.CombinedVueInstance<V, Data, Methods, Computed, { }>>;