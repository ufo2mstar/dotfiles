
str() {
    echo "$1" | sed -E 's/([^\]|^)"/\1\\"/g'
}
cs