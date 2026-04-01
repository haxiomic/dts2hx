#!/bin/bash
# Tests --global and --modular CLI flags
# Verifies that the correct access metadata (@:native vs @:jsRequire) is emitted
set -e
cd "$(dirname "$0")"

PASS=0
FAIL=0

check() {
    local desc="$1" file="$2" pattern="$3"
    if grep -q "$pattern" "$file" 2>/dev/null; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — expected '$pattern' in $file"
    fi
}

check_not() {
    local desc="$1" file="$2" pattern="$3"
    if grep -q "$pattern" "$file" 2>/dev/null; then
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — unexpected '$pattern' found in $file"
    else
        PASS=$((PASS + 1))
    fi
}

check_missing() {
    local desc="$1" file="$2"
    if [ ! -f "$file" ]; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — file $file should not exist"
    fi
}

echo "=== CLI Mode Tests ==="

# Test 1: default mode (both global and modular)
echo "Test: default mode (both global + modular)..."
rm -rf /tmp/dts2hx-mode-test
node ../../dist/dts2hx.js ./modules/ambient --output /tmp/dts2hx-mode-test --noLibWrap --skipDependencies 2>&1 | grep -v "Warning\|^$" > /dev/null
check "default: global dir exists" "/tmp/dts2hx-mode-test/global/GlobalLogger.hx" "@:native"
check "default: modular module exists" "/tmp/dts2hx-mode-test/modules/ambient/MyLibrary.hx" "@:jsRequire"
check "default: MergedNS global" "/tmp/dts2hx-mode-test/global/MergedNS.hx" "@:native"

# Test 2: --global only
echo "Test: --global mode..."
rm -rf /tmp/dts2hx-mode-test
node ../../dist/dts2hx.js ./modules/ambient --output /tmp/dts2hx-mode-test --noLibWrap --skipDependencies --global 2>&1 | grep -v "Warning\|^$" > /dev/null
check "global: GlobalLogger uses @:native" "/tmp/dts2hx-mode-test/GlobalLogger.hx" "@:native"
check_not "global: no @:jsRequire in GlobalLogger" "/tmp/dts2hx-mode-test/GlobalLogger.hx" "@:jsRequire"
check_missing "global: no modular MyLibrary" "/tmp/dts2hx-mode-test/modules/ambient/MyLibrary.hx"

# Test 3: --modular only
echo "Test: --modular mode..."
rm -rf /tmp/dts2hx-mode-test
node ../../dist/dts2hx.js ./modules/ambient --output /tmp/dts2hx-mode-test --noLibWrap --skipDependencies --modular 2>&1 | grep -v "Warning\|^$" > /dev/null
check "modular: MyLibrary uses @:jsRequire" "/tmp/dts2hx-mode-test/modules/ambient/MyLibrary.hx" "@:jsRequire"
check_missing "modular: no global GlobalLogger" "/tmp/dts2hx-mode-test/global/GlobalLogger.hx"
check_missing "modular: no global MergedNS" "/tmp/dts2hx-mode-test/global/MergedNS.hx"

rm -rf /tmp/dts2hx-mode-test
echo ""
echo "CLI mode results: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ] || exit 1
