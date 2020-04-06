/// <reference path="./blobfish.d.ts" />
/// <reference path="./ambient.d.ts" />

import { BlobfishExported, Blobfish } from "./blobfish";

export class Kitten {
    kittenField: string;

    iAmABlobish: Blobfish;
    iAmABlobishExported: BlobfishExported;

    iAmAmbient: Ambient;

    method(a: number, b: string): Date;
}

export function kittenTeraform();

export namespace KittenNamespace {
    interface TypeWithinKittenNamespace<T> {

    }

    export function kittenInvert();
}

declare class ADeclaredKittenClass {

}

export as namespace KittenGlobalNamespaceExport;