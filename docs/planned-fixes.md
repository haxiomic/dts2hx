# Planned Fixes

Actionable improvements identified from ROADMAP.md review and examples testing.

## 1. Enum `final` fields

**Status:** Not started
**Effort:** Easy
**Impact:** Every generated enum abstract

**Problem:** Enum abstract fields are emitted with `var` but should use `final` since
enum values are immutable constants.

```haxe
// Current
extern enum abstract Direction(String) from String to String {
    var Up = "UP";
    var Down = "DOWN";
}

// Expected
extern enum abstract Direction(String) from String to String {
    final Up = "UP";
    final Down = "DOWN";
}
```

**Fix location:** `src/ConverterContext.hx`, `fieldFromSymbol()` — the `EnumMember` branch
(around line 1700). Add `AFinal` to the field's access modifiers.

**Backward compat:** `final` on enum abstract fields is supported since Haxe 4.0. No
version gating needed.

**Test:** `test/unit/typedef-patterns.d.ts` — Direction and NumericDirection enums.
Verify generated output uses `final` not `var`.

---

## 2. `[object Object]` diagnostic message

**Status:** Not started
**Effort:** Easy
**Impact:** Cleaner error messages during conversion

**Problem:** `Log.hx:132` does `${diagnostic.messageText}` but TS's
`Diagnostic.messageText` can be a `DiagnosticMessageChain` object, not a string.
JS interpolation produces `[object Object]`.

```
// Current
> Error: [TypeScript 5.9] [object Object] (globals.d.ts:237:11)

// Expected
> Error: [TypeScript 5.9] The actual error message text (globals.d.ts:237:11)
```

**Fix location:** `src/Log.hx:132`. Replace:
```haxe
var message = '<b>[TypeScript ${Ts.versionMajorMinor}]</> ${diagnostic.messageText}';
```
With a helper that unwraps the chain. `DiagnosticMessageChain` has a `.messageText: String`
field, so:
```haxe
var msgText: String = if (js.Syntax.typeof(diagnostic.messageText) == 'string') {
    cast diagnostic.messageText;
} else {
    Reflect.field(diagnostic.messageText, 'messageText');
};
var message = '<b>[TypeScript ${Ts.versionMajorMinor}]</> $msgText';
```

Alternatively, use TS's own utility if available via the externs:
`Ts.flattenDiagnosticMessageText(diagnostic.messageText, '\n')`.

**Backward compat:** None — log formatting only, no effect on generated output.

**Test:** Convert any module that triggers `@types/node` v25+ globals.d.ts diagnostics
and verify the error message is readable.

---

## 3. Root `package.json` TS version pin

**Status:** Not started
**Effort:** Trivial
**Impact:** Prevents npm resolving to TS 6.x unexpectedly

**Problem:** `"typescript": "^5.9.3"` allows npm to install 6.0.x. While dts2hx may
work with 6.0, the caret creates untested version drift.

**Fix:** In `package.json`, change to exact version:
```json
"typescript": "5.9.3"
```

**Backward compat:** None — internal dependency.

**Test:** `npm install` should install exactly 5.9.3.

---

## 4. Quoted field names (Haxe 4.2+)

**Status:** Not started
**Effort:** Easy, version-gated
**Impact:** Cleaner output for fields with non-identifier names

**Problem:** Fields with names that aren't valid Haxe identifiers (reserved words,
hyphens, special characters) get renamed and annotated with `@:native`:

```haxe
// Current (all Haxe versions)
@:native("function") var function_ : String;
@:native("class") var class_ : Float;
@:native("string-key") var stringKey : String;

// Haxe 4.2+ supports quoted names:
var "function" : String;
var "class" : Float;
var "string-key" : String;
```

Quoted names are more readable, preserve the original name in code, and work better
with IDE tooling.

**Fix location:** `src/Printer.hx`, in field printing. When `useQuotedFieldNames` is
true (Haxe >= 4.2):
1. Check if the field has `@:native` metadata with a string parameter
2. If so, remove the `@:native` metadata and quote the field name instead
3. Emit `var "originalName" : Type` instead of `@:native("originalName") var renamed : Type`

Also needs the version flag plumbed from `Main.hx` (same pattern as
`useEnumAbstractKeyword`).

**Backward compat:** Version-gated. Haxe < 4.2 gets `@:native` (current behavior).
Haxe >= 4.2 gets quoted names.

**Test:** `test/unit/edge-cases.d.ts` — `ReservedWords` interface and `ComputedProps`.
Verify output uses quoted names on Haxe 4.2+.

---

## Resolved

- **Iterable type param count mismatch** — Fixed (was blocking express example)
- **`@:enum abstract` deprecation** — Fixed (version-gated: `enum abstract` for 4.3+)
- **Null type in complexTypeFromTsType** — Fixed (signatureDeclarationNode fallback)
- **ChildProcess.execSync Buffer-to-String** — Fixed (`Std.string()` conversion)

## Deferred (blocked or low priority)

- **Overload documentation** — Blocked by Haxe: `MetadataEntry` has no `doc` field
- **Abstract wrappers for typedefs** — Medium effort, risk of breaking typedef unification
- **Multi-module ConverterContext** — Large refactor
- **--mergeGlobal flag** — Medium effort, niche use case
- **Construct signatures in typedefs** — Blocked by Haxe 4.3+ (`new()` in structures)
- **AnyOf with base fields / function overloads** — Impractical with generic support types
