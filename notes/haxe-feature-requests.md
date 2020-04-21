- Array access on typedefs / interfaces
    => Part of a general extern index signature feature
- See ts.NodeArray and js.lib.ReadOnlyArray for examples, ReadOnlyArray is extended by NodeArray

- `@:newCall` equivalent to `@:selfCall`
    - where 
        ```haxe
        var x: { @:selfCall function call(): Any; }
        x.call()
        // generates x();
        ```
    - @:newCall will do
        ```haxe
        var x: { @:newCall function call(): Any; }
        x.call()
        // generates new x();
        ```