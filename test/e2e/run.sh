#!/bin/bash
set -e
cd "$(dirname "$0")"

echo "=== E2E Test: TypeScript → .d.ts → dts2hx → Haxe → JS → run ==="

# Step 1: Compile TypeScript to JS + .d.ts
echo "Step 1: Compiling TypeScript..."
rm -rf build
# Use the root project's tsc (TS 6.0+), not the test dir's older version
TSC="../../node_modules/.bin/tsc"
$TSC -p tsconfig.json
echo "  → build/"

# Step 2: Generate Haxe externs from .d.ts for each module
echo "Step 2: Generating Haxe externs..."
rm -rf externs
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
  ./build/modules/ts-features \
  ./build/modules/limitations \
  ./build/modules/implements \
  ./build/modules/mixed-index; do
  node ../../dist/dts2hx.js $mod --output externs --noLibWrap --skipDependencies 2>&1 | grep -v "Warning\|^$"
done
# Ambient declarations (global + declare module)
node ../../dist/dts2hx.js ./modules/ambient --output externs --noLibWrap --skipDependencies 2>&1 | grep -v "Warning\|^$"
echo "  → externs/"

# Step 3: Compile Haxe test against generated externs
echo "Step 3: Compiling Haxe test..."
haxe \
  -cp . \
  -cp externs \
  -lib hxnodejs \
  -main TestE2E \
  -js test_output.js \
  -D js-es=6 \
  -w -WDeprecatedEnumAbstract \
  -w -WDeprecated
echo "  → test_output.js"

# Step 4: Compile negative tests
echo "Step 4: Compiling additional test suites..."
for test_main in TestNegative TestImplements TestMixedIndex; do
  outfile=$(echo "$test_main" | tr '[:upper:]' '[:lower:]').js
  haxe \
    -cp . \
    -cp externs \
    -lib hxnodejs \
    -main $test_main \
    -js "$outfile" \
    -D js-es=6 \
    -w -WDeprecatedEnumAbstract \
    -w -WDeprecated
done
echo "  → test suites compiled"

# Step 5: Run runtime tests
echo "Step 5: Running runtime tests..."
echo ""
node -e "require('./modules/ambient-impl'); require('./test_output.js');"
echo ""
echo "Running negative tests..."
node -e "require('./modules/ambient-impl'); require('./testnegative.js');"
echo ""
echo "Running implements tests..."
node -e "require('./testimplements.js');"
echo ""
echo "Running mixed index tests..."
node -e "require('./testmixedindex.js');"
echo ""

# Step 6: Run compile-time enforcement tests
echo "Step 6: Running compile-time enforcement tests..."
bash test-compile-errors.sh
echo ""

# Step 7: Run CLI mode tests
echo "Step 7: Running CLI mode tests..."
bash test-modes.sh
echo ""

# Step 8: Run CLI flag tests
echo "Step 8: Running CLI flag tests..."
bash test-flags.sh
echo ""

# Step 9: Run edge case tests
echo "Step 9: Running edge case tests..."
bash test-edge-cases.sh
