function random_string() {
  cat /dev/urandom | \
      tr -dc 'a-z0-9' | \
      head -c 8 || \
      true
}

function announce() {
    echo "==================================================="
    echo "$1"
    echo "==================================================="
}
