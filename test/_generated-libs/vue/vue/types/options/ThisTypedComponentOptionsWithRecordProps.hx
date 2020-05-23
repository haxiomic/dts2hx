package vue.types.options;

/**
	This type should be used when an object mapped to `PropOptions` is used for a component's `props` value.
**/
typedef ThisTypedComponentOptionsWithRecordProps<V, Data, Methods, Computed, Props> = vue.ComponentOptions<V, DataDef<Data, Props, V>, Methods, Computed, { }, Props> & js.lib.ThisType<vue.types.vue.CombinedVueInstance<V, Data, Methods, Computed, Props>>;