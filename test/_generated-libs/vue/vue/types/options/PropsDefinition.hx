package vue.types.options;

typedef PropsDefinition<T> = ts.AnyOf2<ArrayPropsDefinition<T>, { }>;