package vue;

typedef AsyncComponent<Data, Methods, Computed, Props> = ts.AnyOf2<vue.types.options.AsyncComponentPromise<Data, Methods, Computed, Props>, vue.types.options.AsyncComponentFactory<Data, Methods, Computed, Props>>;