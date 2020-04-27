package global;
extern typedef NodeRequire = NodeRequireFunction & { var resolve : RequireResolve; var cache : Any; var extensions : NodeExtensions; var main : Null<NodeModule>; };