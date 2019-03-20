import EdgeCase, { Thing, DefaultThing } from ".";

let x = new Thing();
x.field;

let c = new EdgeCase.Cat(3);
c.age;

// should be disallowed because of private constructor
// let d = new DefaultThing();

let b = new EdgeCase.BlobfishExported();
b.thisClassIsExported;

