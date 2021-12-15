function run(output:String,dir:String,names:Array<String>,flags:Array<String>,?flagExceptions:Map<String,Array<String>>) {
    Sys.command('rm -rf $output');
    final flagsDefault = flags.join(" ");
    for (name in names) {
        final flagStr = flagExceptions != null && flagExceptions.exists(name) ? flagExceptions.get(name).join(" ") : flagsDefault;
        Sys.command('../cli.js $dir$name --output $output $flagStr');
    }
}