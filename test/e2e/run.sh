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
  ./build/modules/ts-features; do
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

# Step 4: Run the runtime test
echo "Step 4: Running runtime test..."
echo ""
# Load ambient globals before running the test
node -e "require('./modules/ambient-impl'); require('./test_output.js');"
echo ""

# Step 5: Run CLI mode tests
echo "Step 5: Running CLI mode tests..."
bash test-modes.sh
