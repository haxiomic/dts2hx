#!/bin/bash
#
# Runs the e2e test suite against multiple Haxe versions using lix.
#
# Usage:
#   bash run-matrix.sh              # Run all configured versions
#   bash run-matrix.sh 4.3.6        # Run a specific version only
#
# Prerequisites:
#   npm install lix   (local dev dependency in project root)
#
# How it works:
#   - Drops a .haxerc in test/e2e/ to scope the Haxe version for run.sh
#   - Calls run.sh unchanged for each version
#   - For nightly: also runs an ESM pass (--esm flag + @:js.import compilation)
#   - Cleans up .haxerc when done
#
set -e
cd "$(dirname "$0")"

PROJECT_ROOT="$(cd ../.. && pwd)"
LIX="npx --prefix $PROJECT_ROOT lix"
HAXERC="$(pwd)/.haxerc"

# Haxe versions to test
VERSIONS=("4.3.6" "nightly")

# Allow running a single version via argument
if [ -n "$1" ]; then
    VERSIONS=("$1")
fi

cleanup() {
    rm -f "$HAXERC"
}
trap cleanup EXIT

# Ensure versions are downloaded
echo "=== Haxe Version Matrix Test ==="
for version in "${VERSIONS[@]}"; do
    echo "Ensuring Haxe $version is available..."
    $LIX download haxe "$version" 2>&1 | grep -v "already"
done
echo ""

TOTAL_PASS=0
TOTAL_FAIL=0

for version in "${VERSIONS[@]}"; do
    # Resolve the version string lix uses (e.g. "nightly" -> "06a76b8")
    resolved=$($LIX use haxe "$version" 2>&1 | grep -o '[0-9a-f]\{7\}\|[0-9]\+\.[0-9]\+\.[0-9]\+' | head -1)
    # Read the resolved version from the generated .haxerc
    if [ -f ~/haxe/.haxerc ]; then
        lix_version=$(python3 -c "import json; print(json.load(open('$HOME/haxe/.haxerc'))['version'])" 2>/dev/null || echo "$version")
    else
        lix_version="$version"
    fi

    # Write scoped .haxerc for this version
    echo "{\"version\": \"$lix_version\"}" > "$HAXERC"

    actual_version=$(haxe --version 2>&1)
    echo "==========================================="
    echo "  Testing with Haxe $version ($actual_version)"
    echo "==========================================="
    echo ""

    if bash run.sh; then
        echo ""
        echo "  -> Haxe $version ($actual_version): PASSED"
        TOTAL_PASS=$((TOTAL_PASS + 1))
    else
        echo ""
        echo "  -> Haxe $version ($actual_version): FAILED"
        TOTAL_FAIL=$((TOTAL_FAIL + 1))
    fi
    echo ""

    # ESM pass: only for versions that support @:js.import (5.0+)
    major=$(echo "$actual_version" | cut -d. -f1)
    if [ "$major" -ge 5 ] 2>/dev/null; then
        echo "==========================================="
        echo "  ESM pass with Haxe $version ($actual_version)"
        echo "==========================================="
        echo ""
        if bash run-esm.sh; then
            echo ""
            echo "  -> ESM (Haxe $actual_version): PASSED"
            TOTAL_PASS=$((TOTAL_PASS + 1))
        else
            echo ""
            echo "  -> ESM (Haxe $actual_version): FAILED"
            TOTAL_FAIL=$((TOTAL_FAIL + 1))
        fi
        echo ""
    fi
done

cleanup

echo "==========================================="
echo "  Matrix results: $TOTAL_PASS passed, $TOTAL_FAIL failed"
echo "==========================================="
[ "$TOTAL_FAIL" -eq 0 ] || exit 1
