function run(output:String,dir:String,names:Array<String>,flags:Array<String>,?flagExceptions:Map<String,Array<String>>) {
    removeDir(output);
    final flagsDefault = flags.join(" ");
    for (name in names) {
        final flagStr = flagExceptions != null && flagExceptions.exists(name) ? flagExceptions.get(name).join(" ") : flagsDefault;
        Sys.command('node ../cli.js $dir$name --output $output $flagStr');
    }
}

/** Cross-platform recursive directory removal. **/
function removeDir(path:String) {
    if (!sys.FileSystem.exists(path)) return;
    for (entry in sys.FileSystem.readDirectory(path)) {
        final full = haxe.io.Path.join([path, entry]);
        if (sys.FileSystem.isDirectory(full))
            removeDir(full)
        else
            sys.FileSystem.deleteFile(full);
    }
    sys.FileSystem.deleteDirectory(path);
}