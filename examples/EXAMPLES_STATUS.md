# Examples Test Results

## Runtime Results

| Example | Build | Runtime | Details |
|---------|-------|---------|---------|
| babylonjs | PASS | PASS | Canvas created, BABYLON engine loaded |
| phaser | PASS | PASS | Phaser canvas created |
| pixi.js | PASS | PASS | PIXI canvas created |
| playcanvas | PASS | PASS | PlayCanvas canvas created |
| three | PASS | PASS | Three.js canvas created |
| express | FAIL | SKIP | Build fails: `Iterable` type parameter count mismatch in generated TypedArray replacement types |

## Fixes Applied

- `examples/express/Server.hx`: `Router.call_()` -> `Router.call()` (generated API changed)
- `examples/three/package.json`: esbuild `^0.1.18` -> `^0.24.0` (Apple Silicon compat)
- All examples: `"dts2hx": "*"` -> `"dts2hx": "file:../../"` (use local build instead of npm v0.20.0)
- `examples/express/package.json`: pinned `@types/express` 4.17.6, `@types/node` 11.11.3, `@types/express-serve-static-core` 4.17.7, `@types/serve-static` 1.13.3, `@types/range-parser` 1.2.3

---

## Bug Fix Plans

### Bug 1: Iterable type parameter count mismatch (blocks express)

**Root cause:** When TS 5.7+ resolves `Iterable<T>`, the TS type checker returns
`Iterable<T, TReturn, TNext>` (3 params). dts2hx correctly detects the mismatch at the
*declaration* level (Haxe `Iterable` has 1 param) and generates a replacement type for
the declaring symbol. But at *reference* sites within replacement type bodies (e.g. inside
`Uint8Array_`), `Iterable` is referenced with 3 TS type args. The converter resolves
`Iterable` → Haxe's `Iterable` (1 param) but keeps all 3 type arguments, producing
`Iterable<Float, Dynamic, Dynamic>` which Haxe rejects.

**Fix:** In `ConverterContext.hx` `complexTypeFromInterfaceType` or the type reference
resolution path: when a type reference resolves to a known std lib type
(`isExistingStdLibType`), clamp the type arguments to the Haxe type's parameter count.
The std lib type map already knows the expected parameter count — truncate excess args.

Specifically, around line 1517-1529 in `complexTypeFromTypeReference`, after resolving
`hxTarget` and `hxTypeArguments`: if the target is a known std lib type with fewer params
than the TS type provides, truncate `hxTypeArguments` to the std lib param count.

**Implementation:** The `getReferencedHaxeTypePath` function returns info about whether
the type is a std lib type. We need to also return the expected param count. Then in the
reference site, do: `hxTypeArguments = hxTypeArguments.slice(0, expectedParamCount)`.

**Backward compatibility:** No concern — this only affects generated output, not dts2hx's
own compilation. The fix produces *fewer* type args, which is correct for all Haxe versions.

---

### Bug 2: Null type in complexTypeFromTsType (non-fatal)

**Root cause:** TS 4.0+ changed internal type representations. Some `typeArguments` arrays
contain `undefined` elements (e.g. for rest/variadic tuple elements, or for mapped type
property types that the checker hasn't fully resolved). The current null guard returns
`Dynamic`, which is safe but loses type information.

**Fix:** Already partially fixed with the null guard. The remaining occurrences are in
`complexTypeFromTupleTypeReference` (line 1542) where `tupleTypeReference.typeArguments[i]`
can be undefined. The guard in `complexTypeFromTsType` catches this. To fully fix, we'd
need to understand each specific TS API call that returns undefined and handle it
appropriately — but the current `Dynamic` fallback is acceptable.

**Backward compatibility:** No concern — returning `Dynamic` is valid in all Haxe versions.

---

### Bug 3: `@:enum abstract` deprecation in generated externs

**Root cause:** `ConverterContext.hx` line 406 emits `{name: ':enum', pos: pos}` metadata.
Haxe 4.3+ deprecated `@:enum abstract` in favor of `enum abstract`. The Printer already
emits `abstract` (line 168), so the output becomes `@:enum ... abstract` which triggers
the deprecation warning. On Haxe 4.3+ the metadata is redundant — `enum` is now a keyword
modifier on abstracts, not metadata.

**Fix:** Detect the system Haxe version (already available via `haxe --version` in
`Main.hx` line 386). If >= 4.3, omit the `@:enum` metadata and instead use
`TDAbstract` with an `AbEnum` flag in the flags array (the 2nd param we added for 4.3
compat). If < 4.3, keep the `@:enum` metadata as before.

Actually, looking at Printer.hx more carefully: the Printer outputs raw text, not Haxe AST.
The `@:enum` metadata is printed by `printMetadata`, and `abstract` is printed separately.
For Haxe 4.3+, we need to print `enum abstract` instead of `@:enum ... abstract`.

**Implementation options:**
1. **Printer-level:** In `Printer.hx` `printTypeDefinition`, when printing a `TDAbstract`
   that has `@:enum` metadata, check a flag/config and emit `enum abstract` instead of
   `@:enum ... abstract`. Remove `@:enum` from the metadata list before printing.
2. **ConverterContext-level:** Don't add `@:enum` metadata at all; instead set the
   abstract flags (2nd param of `TDAbstract`). Then Printer reads the flags.

Option 1 is simpler and keeps the change local to the output formatting.

**Backward compatibility:** Pass the Haxe version (or a feature flag) to the Printer. When
targeting Haxe < 4.3, emit `@:enum abstract` (old syntax). When >= 4.3, emit
`enum abstract` (new syntax). Default to old syntax if version unknown.

This also applies to:
- `src/Console.hx` (dts2hx's own source, not generated — fix by hand)
- `lib/typescript/ts/*.hx` (TS API externs — fix by hand or with sed)

---

### Bug 4: `[object Object]` diagnostic message

**Root cause:** `Log.hx` line 132 does `${diagnostic.messageText}` but TS's
`Diagnostic.messageText` is `string | DiagnosticMessageChain`. When it's a chain object,
JS string interpolation produces `[object Object]`.

**Fix:** In `Log.hx`, use TS's `flattenDiagnosticMessageText` utility to convert chains
to strings. Or manually extract: if `messageText` is a string, use it directly; if it's
an object, read `.messageText` from it (the chain has a `.messageText: string` field).

```haxe
var msgText = if (js.Syntax.typeof(diagnostic.messageText) == 'string') {
    diagnostic.messageText;
} else {
    Reflect.field(diagnostic.messageText, 'messageText');
};
```

Or use the TS API: `Ts.flattenDiagnosticMessageText(diagnostic.messageText, '\n')`.

**Backward compatibility:** No concern — this is a runtime log formatting fix, doesn't
affect generated output or compilation.

---

### Bug 5: Root package.json TS version caret

**Root cause:** `"typescript": "^5.9.3"` in `package.json`. The caret allows npm to
install 6.0.x since npm treats `^5.9.3` as `>=5.9.3 <6.0.0` normally, but in practice
the installed version jumped to 6.0.2 (possibly due to `npm install typescript@latest`
being run during development).

**Fix:** Pin to exact version: `"typescript": "5.9.3"` (no caret).

**Backward compatibility:** No concern — this controls what dts2hx bundles, not user-facing.

---

_Tested: 2026-04-01_
_Runtime tests use puppeteer-core with system Chrome (headless + ANGLE WebGL)_
