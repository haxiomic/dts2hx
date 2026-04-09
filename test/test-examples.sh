#!/bin/bash
# Test that all examples/ compile: regenerate externs + haxe build.hxml
# This is a compilation-only test (no runtime) suitable for CI.
set -e
cd "$(dirname "$0")/.."

EXAMPLES_DIR="examples"
DTS2HX="node $(pwd)/dist/dts2hx.js"
PASS=0
FAIL=0
SKIP=0

for dir in "$EXAMPLES_DIR"/*/; do
    name=$(basename "$dir")

    # Skip non-example directories
    [ ! -f "$dir/build.hxml" ] && continue
    [ ! -f "$dir/package.json" ] && continue

    # Extract dts2hx flags from package.json postinstall script
    flags=$(node -e "
        const p = require('./$dir/package.json');
        const pi = (p.scripts || {}).postinstall || '';
        const gen = (p.scripts || {})['generate-externs'] || '';
        const cmd = pi.includes('dts2hx') ? pi : gen;
        console.log(cmd.replace(/^(npm run generate-externs|dts2hx)/, '').trim());
    " 2>/dev/null)

    if [ -z "$flags" ]; then
        echo "  [SKIP] $name: no dts2hx command found in package.json"
        SKIP=$((SKIP + 1))
        continue
    fi

    # Check node_modules exist
    if [ ! -d "$dir/node_modules" ]; then
        echo "  [SKIP] $name: node_modules not installed"
        SKIP=$((SKIP + 1))
        continue
    fi

    echo -n "  $name: "

    # Clear and regenerate externs
    rm -rf "$dir/.haxelib"
    gen_output=$( (cd "$dir" && $DTS2HX $flags) 2>&1 ) || true

    # Verify externs were actually generated
    if [ ! -d "$dir/.haxelib" ] || [ -z "$(ls "$dir/.haxelib/" 2>/dev/null)" ]; then
        echo "FAIL (no externs generated)"
        echo "$gen_output" | grep -i "error\|Error\|not found\|Cannot" | head -3
        FAIL=$((FAIL + 1))
        continue
    fi

    # Compile with Haxe (filter -cmd lines — bundling is not part of compile test)
    if ! compile_output=$( (cd "$dir" && grep -v '^-cmd ' build.hxml > .build-ci.hxml && haxe .build-ci.hxml && rm -f .build-ci.hxml) 2>&1 ); then
        echo "FAIL (haxe compilation)"
        echo "$compile_output" | head -5
        FAIL=$((FAIL + 1))
        continue
    fi

    echo "OK"
    PASS=$((PASS + 1))
done

echo ""
echo "Examples: $PASS passed, $FAIL failed, $SKIP skipped"

if [ "$FAIL" -gt 0 ]; then
    exit 1
fi
