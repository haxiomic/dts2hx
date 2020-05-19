package vue;

typedef DirectiveFunction = (el:js.html.Element, binding:vue.types.options.DirectiveBinding, vnode:VNode, oldVnode:VNode) -> Void;