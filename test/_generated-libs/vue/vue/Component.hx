package vue;

typedef Component<Data, Methods, Computed, Props> = ts.AnyOf3<VueConstructor<Vue>, FunctionalComponentOptions<Props, vue.types.options.PropsDefinition<Props>>, ComponentOptions<ts.Never, Data, Methods, Computed, Props, haxe.DynamicAccess<Dynamic>>>;