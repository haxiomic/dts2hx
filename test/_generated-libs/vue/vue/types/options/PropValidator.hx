package vue.types.options;

typedef PropValidator<T> = ts.AnyOf4<{ }, vue.PropOptions<T>, () -> T, Array<Prop<T>>>;