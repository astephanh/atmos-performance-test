resource "null_resource" "default" {
  provisioner "local-exec" {
    command = format("echo %s from Environment: %s", var.hello_string, var.stage)
  }
}
