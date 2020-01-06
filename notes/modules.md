- Ambient declarations should just use @:native
- If a symbol is exported it _also_ gets jsRequire
- Exports should use @:jsRequire(module, subModule), however we should use compiler flags to switch it to @:native when the user wants
    For example
    #if NO_JSREQUIRE_THREE
    @:native('THREE.Mesh')
    #else
    @:jsRequire('three', 'Mesh')
    #end
