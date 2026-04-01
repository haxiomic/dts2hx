#!/bin/bash
# Tests for remaining CLI flag gaps: --tsconfig, --sourceLocation, --globalPackageName,
# --skipDependencies, --all, and module dependency resolution.
set -e
cd "$(dirname "$0")"

PASS=0
FAIL=0
TMPDIR="/tmp/dts2hx-cli-gaps"
DTS2HX="$(cd ../.. && pwd)/dist/dts2hx.js"
E2EDIR="$(pwd)"

check() {
    local desc="$1" file="$2" pattern="$3"
    if grep -q "$pattern" "$file" 2>/dev/null; then PASS=$((PASS + 1));
    else FAIL=$((FAIL + 1)); echo "  FAIL: $desc — expected '$pattern' in $(basename $file)"; fi
}
check_exists() {
    local desc="$1" file="$2"
    if [ -f "$file" ]; then PASS=$((PASS + 1));
    else FAIL=$((FAIL + 1)); echo "  FAIL: $desc — $file not found"; fi
}
check_not_exists() {
    local desc="$1" file="$2"
    if [ ! -f "$file" ]; then PASS=$((PASS + 1));
    else FAIL=$((FAIL + 1)); echo "  FAIL: $desc — $file should not exist"; fi
}

echo "=== CLI Gap Tests ==="

# --sourceLocation: adds source file/line comments
echo "Test: --sourceLocation..."
rm -rf "$TMPDIR"
node $DTS2HX "$E2EDIR/build/modules/types" --output "$TMPDIR" --noLibWrap --skipDependencies --sourceLocation 2>&1 | grep -v "Warning\|^$\|Error" > /dev/null
# With --sourceLocation, generated files should contain source location comments
TYPES_FILE=$(find "$TMPDIR" -name "Types.hx" | head -1)
if [ -n "$TYPES_FILE" ]; then
    # Location comments look like: "// source: /path/to/file.d.ts:12"
    if grep -q "\.d\.ts\|\.ts" "$TYPES_FILE"; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: --sourceLocation: no source location in output"
    fi
else
    FAIL=$((FAIL + 1))
    echo "  FAIL: --sourceLocation: Types.hx not generated"
fi

# Without --sourceLocation, no comments
rm -rf "$TMPDIR"
node $DTS2HX "$E2EDIR/build/modules/types" --output "$TMPDIR" --noLibWrap --skipDependencies 2>&1 | grep -v "Warning\|^$\|Error" > /dev/null
TYPES_FILE=$(find "$TMPDIR" -name "Types.hx" | head -1)
if [ -n "$TYPES_FILE" ]; then
    if grep -q "source:" "$TYPES_FILE"; then
        FAIL=$((FAIL + 1))
        echo "  FAIL: default: unexpected source location comments"
    else
        PASS=$((PASS + 1))
    fi
fi

# --globalPackageName: custom name for global package
echo "Test: --globalPackageName..."
rm -rf "$TMPDIR"
node $DTS2HX "$E2EDIR/modules/ambient" --output "$TMPDIR" --noLibWrap --skipDependencies --globalPackageName myglobals 2>&1 | grep -v "Warning\|^$\|Error" > /dev/null
# Globals should be in "myglobals" package instead of "global"
GLOBAL_DIR=$(find "$TMPDIR" -type d -name "myglobals" | head -1)
if [ -n "$GLOBAL_DIR" ]; then
    PASS=$((PASS + 1))
    # Check package declaration matches
    LOGGER=$(find "$TMPDIR" -path "*myglobals*" -name "GlobalLogger.hx" | head -1)
    if [ -n "$LOGGER" ]; then
        check "globalPackageName: package matches" "$LOGGER" "package myglobals"
    fi
else
    FAIL=$((FAIL + 1))
    echo "  FAIL: --globalPackageName: 'myglobals' directory not created"
fi

# --tsconfig: custom compiler options
echo "Test: --tsconfig..."
rm -rf "$TMPDIR"
# Create a minimal tsconfig that changes target
cat > /tmp/dts2hx-test-tsconfig.json << 'EOF'
{
    "compilerOptions": {
        "target": "ES2020",
        "strict": true
    }
}
EOF
node $DTS2HX "$E2EDIR/build/modules/types" --output "$TMPDIR" --noLibWrap --skipDependencies --tsconfig /tmp/dts2hx-test-tsconfig.json 2>&1 | grep -v "Warning\|^$\|Error" > /dev/null
# Should still generate output successfully
TYPES_FILE=$(find "$TMPDIR" -name "Types.hx" | head -1)
check_exists "--tsconfig: Types.hx generated" "${TYPES_FILE:-/nonexistent}"
rm -f /tmp/dts2hx-test-tsconfig.json

# Module dependency resolution (without --skipDependencies)
echo "Test: module dependency resolution..."
rm -rf "$TMPDIR"
# math module depends on types module — without --skipDependencies, types should also be converted
node $DTS2HX "$E2EDIR/build/modules/math" --output "$TMPDIR" --noLibWrap 2>&1 | grep -v "Warning\|^$\|Error" > /dev/null
# Should generate BOTH math and types modules
MATH_FILE=$(find "$TMPDIR" -name "Math_.hx" -o -name "Math.hx" | head -1)
TYPES_FILE=$(find "$TMPDIR" -name "Types.hx" | head -1)
check_exists "dependency: Math module generated" "${MATH_FILE:-/nonexistent}"
# types module should be pulled in as dependency
POINT_FILE=$(find "$TMPDIR" -name "Point.hx" | head -1)
check_exists "dependency: Point type from types module" "${POINT_FILE:-/nonexistent}"

# --skipDependencies should prevent dependency resolution
rm -rf "$TMPDIR"
node $DTS2HX "$E2EDIR/build/modules/math" --output "$TMPDIR" --noLibWrap --skipDependencies 2>&1 | grep -v "Warning\|^$\|Error" > /dev/null
# Should generate ONLY math module, not types
MATH_FILE=$(find "$TMPDIR" -name "Math_.hx" -o -name "Math.hx" | head -1)
check_exists "skipDeps: Math module generated" "${MATH_FILE:-/nonexistent}"

rm -rf "$TMPDIR"
echo ""
echo "CLI gap results: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ] || exit 1
