LOG="$TMP/setup_once.log"

setup_once() {
  echo "once" >> "$LOG"
}

@test "one" {
    [ "$(cat "$LOG")" = "once" ]
}

@test "two" {
    [ "$(cat "$LOG")" = "once" ]
}

@test "three" {
    [ "$(cat "$LOG")" = "once" ]
}
