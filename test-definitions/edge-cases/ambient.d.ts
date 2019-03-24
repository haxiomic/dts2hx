declare class Ambient {

    someField: Date;

}

// If the module name is double quoted, then it's not actually global but can be imported with require
// if the module isn't quoted then it's globally available
// declare module "AmbientModule" {
declare module AmbientModule {

    const AmbientValue = 100;

    class Stats {
        isFile(): boolean;
        dev: number;
        atime: Date;
    }

    interface AmbientInterface {
        someField: Date;
    }

    enum AmbientEnum {
        One,
        Two,
    }

}

// this makes this file into a module
// export type AnExportInAmbient = Date;

// this can only be used within modules
// export as namespace hello;