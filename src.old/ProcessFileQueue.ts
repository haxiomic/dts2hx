import * as ts from 'typescript';

export default class ProcessFileQueue {

    queue = new Array<{
        sourceFile: ts.SourceFile,
        globalExportsOnly: boolean,
    }>();

    get length() {
        return this.queue.length;
    }

    constructor() { }

    pushFileUnique(sourceFile: ts.SourceFile, globalExportsOnly: boolean) {
        let matching = this.queue.find((e) => e.sourceFile === sourceFile);
        if (matching == null) {
            this.queue.push({
                sourceFile: sourceFile,
                globalExportsOnly: globalExportsOnly,
            });
        }
    }

    shift() {
        return this.queue.shift();
    }

}