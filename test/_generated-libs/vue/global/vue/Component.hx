package global.vue;

typedef Component<Data, Methods, Computed, Props> = ts.AnyOf3<vue.VueConstructor<Vue>, vue.FunctionalComponentOptions<Props, vue.types.options.PropsDefinition<Props>>, vue.ComponentOptions<ts.Never, Data, Methods, Computed, Props, haxe.DynamicAccess<Dynamic>>>;