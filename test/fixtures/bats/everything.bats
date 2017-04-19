LOG="$TMP/everything.log"

setup_once() {
    echo -n "setup_once," >> "$LOG"
}

teardown_once() {
    echo -n "teardown_once," >> "$LOG"
}

setup() {
    echo -n "setup," >> "$LOG"
}

teardown() {
    echo -n "teardown," >> "$LOG"
}

@test "one" {
    [ "$(cat "$LOG")" = "setup_once,setup," ]
}

@test "two" {
    [ "$(cat "$LOG")" = "setup_once,setup,teardown,setup," ]
}

@test "three" {
    [ "$(cat "$LOG")" = "setup_once,setup,teardown,setup,teardown,setup," ]
}
