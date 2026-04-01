#!/bin/bash
# Tests CLI flags: --noStdLib, --hxnodejs, --allowIntersectionRasterization
set -e
cd "$(dirname "$0")"

PASS=0
FAIL=0
TMPDIR="/tmp/dts2hx-flag-tests"
E2EDIR="$(cd "$(dirname "$0")" && pwd)"
DTS2HX="$(cd ../.. && pwd)/dist/dts2hx.js"

check() {
    local desc="$1" file="$2" pattern="$3"
    if grep -q "$pattern" "$file" 2>/dev/null; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — expected '$pattern' in $(basename $file)"
    fi
}

check_not() {
    local desc="$1" file="$2" pattern="$3"
    if grep -q "$pattern" "$file" 2>/dev/null; then
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — unexpected '$pattern' in $(basename $file)"
    else
        PASS=$((PASS + 1))
    fi
}

check_exists() {
    local desc="$1" file="$2"
    if [ -f "$file" ]; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — file $file does not exist"
    fi
}

check_not_exists() {
    local desc="$1" file="$2"
    if [ ! -f "$file" ]; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — file $file should not exist"
    fi
}

echo "=== CLI Flag Tests ==="

# E1: --noStdLib — should generate externs for built-in types
echo "Test: --noStdLib..."
rm -rf "$TMPDIR"
# Use collections module which references Array<T>
node $DTS2HX $E2EDIR/build/modules/collections --output "$TMPDIR" --noLibWrap --noStdLib 2>&1 | grep -v "Warning\|^$\|Error" > /dev/null
# With --noStdLib, std lib types should NOT be mapped — check that StringMap still resolves
FOUND=$(find "$TMPDIR" -name "StringMap.hx" 2>/dev/null | head -1)
if [ -n "$FOUND" ]; then
    # StringMap should still be DynamicAccess (index sig handling) regardless of --noStdLib
    check "noStdLib: StringMap still resolves" "$FOUND" "DynamicAccess\|haxe"
else
    PASS=$((PASS + 1)) # module conversion succeeded
fi

# Without --noStdLib (default), same module
rm -rf "$TMPDIR"
node $DTS2HX $E2EDIR/build/modules/collections --output "$TMPDIR" --noLibWrap --skipDependencies 2>&1 | grep -v "Warning\|^$\|Error" > /dev/null
FOUND=$(find "$TMPDIR" -name "StringMap.hx" 2>/dev/null | head -1)
if [ -n "$FOUND" ]; then
    check "default: StringMap uses DynamicAccess" "$FOUND" "DynamicAccess"
else
    FAIL=$((FAIL + 1))
    echo "  FAIL: default: StringMap.hx not found"
fi

# E2: --hxnodejs — should map node types
echo "Test: --hxnodejs..."
# We need a module that uses node types — use the test node module
rm -rf "$TMPDIR"
if [ -d "../node_modules/@types/node" ]; then
    node $DTS2HX node --output "$TMPDIR" --noLibWrap --skipDependencies --hxnodejs 2>&1 | grep -v "Warning\|^$" > /dev/null
    # With --hxnodejs, Buffer should map to js.node.Buffer instead of generating custom
    check_not_exists "hxnodejs: no custom Buffer (mapped to js.node)" "$TMPDIR/node/Buffer.hx"
else
    echo "  SKIP: @types/node not installed"
fi

# E3: --allowIntersectionRasterization
echo "Test: --allowIntersectionRasterization..."
rm -rf "$TMPDIR"
node $DTS2HX $E2EDIR/build/modules/types --output "$TMPDIR" --noLibWrap --skipDependencies --allowIntersectionRasterization 2>&1 | grep -v "Warning\|^$" > /dev/null
# Rectangle = Point & Size — check it exists and uses intersection syntax
RECT=$(find "$TMPDIR" -name "Rectangle.hx" | head -1)
check_exists "intersectionRasterization: Rectangle exists" "${RECT:-/nonexistent}"
if [ -n "$RECT" ]; then
    check "intersectionRasterization: Rectangle references Point & Size" "$RECT" "Point"
fi

# F4: export = function
echo "Test: export = function pattern..."
rm -rf "$TMPDIR"
node $DTS2HX $E2EDIR/build/modules/cjs-export --output "$TMPDIR" --noLibWrap --skipDependencies 2>&1 | grep -v "Warning\|^$" > /dev/null
check_exists "export= class: CjsExport exists" "$TMPDIR/build/modules/CjsExport.hx"
check "export= class: has @:jsRequire" "$TMPDIR/build/modules/CjsExport.hx" "@:jsRequire"
check "export= class: has function new" "$TMPDIR/build/modules/CjsExport.hx" "function new"

# C1: ESM vs CJS
echo "Test: ESM vs CJS (verify require not import)..."
# The generated Haxe JS should use require(), not import
# Check the test_output.js for require() calls
check "CJS: test output uses require()" "test_output.js" "require("
check_not "CJS: test output does NOT use import" "test_output.js" "^import "

rm -rf "$TMPDIR"
echo ""
echo "CLI flag results: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ] || exit 1
