#!/bin/bash
#
# ESM variant of the e2e test suite.
# Generates externs with --esm (@:js.import) and compiles with Haxe 5+.
#
# Requires a Haxe version that supports @:js.import (5.0+).
# Can be run standalone or called from run-matrix.sh.
#
set -e
cd "$(dirname "$0")"

echo "=== E2E Test (ESM mode): @:js.import ==="

# Verify Haxe version supports @:js.import
HAXE_VERSION=$(haxe --version 2>&1)
MAJOR=$(echo "$HAXE_VERSION" | cut -d. -f1)
if [ "$MAJOR" -lt 5 ] 2>/dev/null; then
    echo "SKIP: Haxe $HAXE_VERSION does not support @:js.import (requires 5.0+)"
    exit 0
fi
echo "Using Haxe $HAXE_VERSION"

# Step 1: Compile TypeScript to JS + .d.ts
if [ ! -d build ] || [ ! -f build/testlib.d.ts ]; then
    echo "Step 1: Compiling TypeScript..."
    rm -rf build
    TSC="../../node_modules/.bin/tsc"
    $TSC -p tsconfig.json
    echo "  -> build/"
fi

# Step 2: Generate Haxe externs with --esm
echo "Step 2: Generating Haxe externs (ESM mode)..."
rm -rf externs-esm
for mod in \
  ./build/testlib \
  ./build/modules/types \
  ./build/modules/math \
  ./build/modules/collections \
  ./build/modules/events \
  ./build/modules/cjs-export \
  ./build/modules/barrel \
  ./build/modules/patterns \
  ./build/modules/advanced \
  ./build/modules/ts-features; do
  node ../../dist/dts2hx.js $mod --output externs-esm --noLibWrap --skipDependencies --esm 2>&1 | grep -v "Warning\|^$"
done
# Ambient declarations
node ../../dist/dts2hx.js ./modules/ambient --output externs-esm --noLibWrap --skipDependencies --esm 2>&1 | grep -v "Warning\|^$"
echo "  -> externs-esm/"

# Step 3: Verify @:js.import metadata is present in generated externs
echo "Step 3: Verifying @:js.import metadata..."
PASS=0
FAIL=0

check_esm() {
    local desc="$1" file="$2"
    if grep -q "@:js.import" "$file" 2>/dev/null; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — no @:js.import in $file"
    fi
}

check_no_require() {
    local desc="$1" file="$2"
    if grep -q "@:jsRequire" "$file" 2>/dev/null; then
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — unexpected @:jsRequire in $file"
    else
        PASS=$((PASS + 1))
    fi
}

check_default() {
    local desc="$1" file="$2"
    if grep -q "@:js.import(@default" "$file" 2>/dev/null; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — expected @:js.import(@default in $file"
    fi
}

# Named exports should use @:js.import("mod", "Name")
check_esm "Animal has @:js.import" "externs-esm/build/testlib/Animal.hx"
check_no_require "Animal has no @:jsRequire" "externs-esm/build/testlib/Animal.hx"
check_esm "Dog has @:js.import" "externs-esm/build/testlib/Dog.hx"
check_esm "Direction enum has @:js.import" "externs-esm/build/testlib/Direction.hx"
check_esm "Shape class has @:js.import" "externs-esm/build/modules/advanced/Shape.hx"

# Default exports should use @:js.import(@default ...)
check_default "Default export uses @default" "externs-esm/build/modules/patterns/Default.hx"

# Module-level exports (export =) should use @:js.import(@default ...)
check_default "Module-level export uses @default" "externs-esm/build/modules/Patterns.hx"

# Relative paths should have .js extension for Node ESM compatibility
check_js_ext() {
    local desc="$1" file="$2"
    if grep -q '@:js.import.*"\..*\.js"' "$file" 2>/dev/null || grep -q '@:js.import(@default.*\.js")' "$file" 2>/dev/null; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — missing .js extension in import path"
        grep "@:js.import" "$file" 2>/dev/null
    fi
}
check_js_ext "Animal path has .js" "externs-esm/build/testlib/Animal.hx"
check_js_ext "Module-level path has .js" "externs-esm/build/modules/Patterns.hx"

# Package specifiers should NOT have .js extension
check_no_js_ext() {
    local desc="$1" file="$2"
    if grep -q '@:js.import.*\.js"' "$file" 2>/dev/null; then
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — bare specifier should not have .js extension"
    else
        PASS=$((PASS + 1))
    fi
}
check_no_js_ext "npm package path has no .js" "externs-esm/modules/ambient/MyLibrary.hx"

echo "  ESM metadata: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ] || exit 1

# Step 4: Compile and run ESM runtime smoke test
# Uses .mjs extension so Node treats it as ESM
echo "Step 4: Compiling ESM runtime smoke test..."
cat > TestESMSmoke.hx << 'HXEOF'
import build.testlib.Animal;
import build.Testlib;

class TestESMSmoke {
    static var passed = 0;
    static var failed = 0;

    static function assert(cond:Bool, desc:String) {
        if (cond) { passed++; } else { failed++; trace('  FAIL: $desc'); }
    }

    static function main() {
        // Test named import (class constructor + methods)
        var a = new Animal("cat", 4);
        assert(a.name == "cat", "Animal name via named import");
        assert(a.legs == 4, "Animal legs via named import");

        // Test default import (module-level function)
        assert(Testlib.greet("world") == "Hello, world!", "greet via default import");
        assert(Testlib.add(2, 3) == 5, "add via default import");

        trace('ESM runtime: $passed passed, $failed failed');
        if (failed > 0) js.Node.process.exit(1);
    }
}
HXEOF

haxe \
  -cp . \
  -cp externs-esm \
  -lib hxnodejs \
  -main TestESMSmoke \
  -js test_esm_smoke.mjs \
  -D js-es=6 \
  -w -WDeprecatedEnumAbstract \
  -w -WDeprecated
echo "  -> test_esm_smoke.mjs"

# Verify ESM import statements are present
ESM_IMPORTS=$(grep -c "^import " test_esm_smoke.mjs 2>/dev/null || echo 0)
echo "  $ESM_IMPORTS ESM import statement(s) in compiled JS"

# Step 5: Run ESM smoke test with Node
echo "Step 5: Running ESM runtime smoke test..."
node test_esm_smoke.mjs 2>&1

echo ""
echo "ESM e2e results: $PASS metadata checks passed, runtime verified"

# Cleanup
rm -f test_esm_smoke.mjs TestESMSmoke.hx
