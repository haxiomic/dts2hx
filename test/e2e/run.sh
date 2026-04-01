#!/bin/bash
set -e
cd "$(dirname "$0")"

echo "=== E2E Test: TypeScript → .d.ts → dts2hx → Haxe → JS → run ==="

# Step 1: Compile TypeScript to JS + .d.ts
echo "Step 1: Compiling TypeScript..."
mkdir -p build
npx tsc testlib.ts --declaration --module commonjs --target ES2015 --strict --outDir build
echo "  → build/testlib.js + build/testlib.d.ts"

# Step 2: Generate Haxe externs from .d.ts
echo "Step 2: Generating Haxe externs..."
rm -rf externs
node ../../dist/dts2hx.js ./build/testlib --output externs --noLibWrap
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
  -w -WDeprecatedEnumAbstract
echo "  → test_output.js"

# Step 4: Run the test
echo "Step 4: Running test..."
echo ""
node test_output.js
