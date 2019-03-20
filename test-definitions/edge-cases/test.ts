import EdgeCase, { Thing, DefaultThing } from ".";
import AnotherNamespace from ".";

let x = new Thing();
x.field;

let c = new EdgeCase.Cat(3);
c.age;

// should be disallowed because of private constructor
// let d = new DefaultThing();

let b = new EdgeCase.BlobfishExported();
b.thisClassIsExported;

let a = new AnotherNamespace.Blobfish();

// Ambient should be available globally (it's only reference via tripple slash in kitten.d.ts)
let am: Ambient;