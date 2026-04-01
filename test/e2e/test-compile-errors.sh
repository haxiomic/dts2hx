#!/bin/bash
# Tests that verify certain patterns correctly produce Haxe compile ERRORS.
# Each test writes a small Haxe file that should fail to compile.
# A failure to compile is the EXPECTED behavior.
set -e
cd "$(dirname "$0")"

PASS=0
FAIL=0

# Verify a Haxe snippet FAILS to compile
expect_compile_error() {
    local desc="$1" code="$2"
    echo "class CompileTest { static function main() { $code } }" > CompileTest.hx
    if haxe -cp . -cp externs -lib hxnodejs -main CompileTest -js /dev/null -w -WDeprecated -w -WDeprecatedEnumAbstract 2>/dev/null; then
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — should NOT compile but did"
    else
        PASS=$((PASS + 1))
    fi
    rm -f CompileTest.hx
}

# Verify a Haxe snippet SUCCEEDS to compile
expect_compile_ok() {
    local desc="$1" code="$2"
    echo "class CompileTest { static function main() { $code } }" > CompileTest.hx
    if haxe -cp . -cp externs -lib hxnodejs -main CompileTest -js /dev/null -w -WDeprecated -w -WDeprecatedEnumAbstract 2>/dev/null; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — should compile but didn't"
        haxe -cp . -cp externs -lib hxnodejs -main CompileTest -js /dev/null -w -WDeprecated -w -WDeprecatedEnumAbstract 2>&1 | head -3
    fi
    rm -f CompileTest.hx
}

echo "=== Compile-time enforcement tests ==="

# Test 1: Readonly fields should reject writes
echo "Test: Readonly fields reject writes..."
expect_compile_error \
    "writing to Readonly final field" \
    'var f = build.modules.TsFeatures.freezeConfig({ host: "x", port: 1, debug: false }); f.host = "y";'

# Test 2: Readonly fields should allow reads
echo "Test: Readonly fields allow reads..."
expect_compile_ok \
    "reading Readonly final field" \
    'var f = build.modules.TsFeatures.freezeConfig({ host: "x", port: 1, debug: false }); var h = f.host;'

# Test 3: never/Void return can't be used as value
echo "Test: never return can't be used..."
expect_compile_error \
    "using never return value" \
    'var x = build.modules.TsFeatures.throwError("boom");'

# Test 4: Wrong type for constrained generic
echo "Test: type constraint enforcement..."
expect_compile_error \
    "passing wrong type to constrained generic" \
    'build.modules.TsFeatures.longest(42, 99);'

# Test 5: DynamicAccess requires .get() not []
echo "Test: DynamicAccess enforces .get() API..."
expect_compile_ok \
    "DynamicAccess.get() works" \
    'var d = build.modules.TsFeatures.createDict("k", 1); var v = d.get("k");'

# Test 6: String enum accepts enum values
echo "Test: string enum accepts enum values..."
expect_compile_ok \
    "passing enum value" \
    'build.Testlib.directionToString(build.testlib.Direction.Up);'

# Test 7: String enum also accepts raw strings (Haxe @:enum from String behavior)
echo "Test: string enum accepts raw strings (from String)..."
expect_compile_ok \
    "passing raw string to string enum (from String implicit cast)" \
    'build.Testlib.directionToString("UP");'

# Test 8: Numeric enum rejects wrong type
echo "Test: numeric enum rejects wrong type..."
expect_compile_error \
    "passing string to numeric enum param" \
    'var x:build.testlib.NumericEnum = "not a number";'

# Test 9: BigInt type has toString method
echo "Test: BigInt has toString..."
expect_compile_ok \
    "BigInt.toString() compiles" \
    'var b = build.modules.BigintTest.makeBigInt(42); var s:String = b.toString();'

# === Extern compatibility tests (known bugs - expected to fail until fixed) ===
# These test known dts2hx issues. They use expect_compile_ok because the
# generated externs SHOULD compile. When they fail, they document real bugs.

# Bug EC-1: Construct signatures in structure types
# WidgetFactory has `function new()` in a typedef, illegal in Haxe 4.3+
echo "Test: [EC-1] construct sig in struct compiles..."
expect_compile_ok \
    "[EC-1] WidgetFactory typedef with new()" \
    'var f:modules.extern_compat.WidgetFactory = null; var w = f.create("test");'

# Bug EC-3: Iterator/Iterable type parameter count
# TS 5.6+ Iterator<T, TReturn, TNext> maps to Haxe Iterator<T> (1 param)
echo "Test: [EC-3] Iterator type params compile..."
expect_compile_ok \
    "[EC-3] DataProcessor with Iterator<T>" \
    'var dp:modules.extern_compat.DataProcessor = null;'

echo ""
echo "Compile-time results: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ] || exit 1
