package global.vue;

typedef Component<Data, Methods, Computed, Props> = ts.AnyOf3<vue.VueConstructor<vue.Vue>, vue.FunctionalComponentOptions<Props, vue.types.options.PropsDefinition<Props>>, vue.ComponentOptions<Any, Data, Methods, Computed, Props, { }>>;