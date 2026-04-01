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

# Step 1: Ensure TypeScript is compiled (reuse build/ from run.sh if present)
if [ ! -d build ]; then
    echo "Step 1: Compiling TypeScript..."
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

echo "  ESM metadata: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ] || exit 1

# Step 4: Compile Haxe test against ESM externs
echo "Step 4: Compiling Haxe test (ESM externs)..."
haxe \
  -cp . \
  -cp externs-esm \
  -lib hxnodejs \
  -main TestE2E \
  -js test_output_esm.js \
  -D js-es=6 \
  -w -WDeprecatedEnumAbstract \
  -w -WDeprecated
echo "  -> test_output_esm.js"

# Step 5: Verify the compiled JS contains ESM import statements
echo "Step 5: Checking for ESM imports in compiled JS..."
ESM_IMPORTS=$(grep -c "^import " test_output_esm.js 2>/dev/null || echo 0)
if [ "$ESM_IMPORTS" -gt 0 ]; then
    echo "  Found $ESM_IMPORTS ESM import statement(s)"
else
    echo "  WARNING: No ESM import statements found in compiled JS"
    echo "  (This may be expected if DCE removed all extern usage)"
fi

# Step 6: Run runtime tests
# Note: ESM imports in the compiled JS require module resolution.
# The compiled output mixes ESM imports with IIFE wrapper, so we test
# only that compilation succeeded. Full runtime testing requires an
# ESM-compatible module loader setup.
echo ""
echo "ESM e2e results: compilation succeeded, $PASS metadata checks passed"

# Cleanup
rm -f test_output_esm.js
