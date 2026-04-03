package node.assert;

typedef AssertPredicate = ts.AnyOf5<Dynamic, js.lib.RegExp, js.lib.Error, { }, (thrown:Any) -> Bool>;