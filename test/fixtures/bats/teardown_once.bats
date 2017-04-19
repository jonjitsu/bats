LOG="$TMP/teardown_once.log"

teardown_once() {
    echo "once" >> "$LOG"
}

@test "one" {
    ! test -f "$LOG"
}

@test "two" {
    ! test -f "$LOG"
}

@test "three" {
    ! test -f "$LOG"
}
