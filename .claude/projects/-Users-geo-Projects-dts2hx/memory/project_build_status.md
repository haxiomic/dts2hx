---
name: Build Status
description: Haxe build broken on 4.3.6 due to API changes from 4.1.4; dist JS still works
type: project
---

Project was built with Haxe 4.1.4 but system has 4.3.6. Three build errors:
1. `Printer.hx:172` — `TDAbstract` from/to arrays changed from `Array<ComplexType>` to `Array<AbstractFlag>` in Haxe 4.2+
2. `hxargs/Args.hx:97` — `$v{}` reification disallowed outside macro in newer Haxe
3. `Main.hx:512` — `dts2hxPackageJson.repository.url` field access fails due to stricter null safety

**Why:** Haxe 4.1→4.3 introduced breaking macro API changes and stricter type checks.
**How to apply:** Either fix compatibility issues for 4.3.6 or install Haxe 4.1.x. The pre-built `dist/dts2hx.js` works fine with `node` and can be used for testing.
