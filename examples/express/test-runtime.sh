#!/bin/bash
# Runtime test for the express example
# Assumes externs are already generated and compiled (run haxe build.hxml first)
set -e
cd "$(dirname "$0")"

echo "=== Express Runtime Test ==="

if [ ! -f dist/server.js ]; then
    echo "dist/server.js not found. Run 'haxe build.hxml' first."
    exit 1
fi

# Start server (suppress output)
node dist/server.js > /dev/null 2>&1 &
SERVER_PID=$!
sleep 1

PASS=0
FAIL=0

check() {
    local desc="$1" url="$2" expected="$3"
    local actual
    actual=$(curl -s "$url")
    if echo "$actual" | grep -q "$expected"; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc"
        echo "    expected: $expected"
        echo "    got: $actual"
    fi
}

check_status() {
    local desc="$1" url="$2" expected="$3"
    local actual
    actual=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    if [ "$actual" = "$expected" ]; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "  FAIL: $desc — expected $expected, got $actual"
    fi
}

check "root route" "http://localhost:3000/" "Hello World"
check "explicit route" "http://localhost:3000/route" "Example route"
check "router mount" "http://localhost:3000/birds" "Birds home page"
check "router sub-route" "http://localhost:3000/birds/about" "About birds"
check_status "404 for unknown" "http://localhost:3000/nonexistent" "404"

kill $SERVER_PID 2>/dev/null || true
wait $SERVER_PID 2>/dev/null || true

echo ""
echo "Results: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ] || exit 1
