output "hello_string" {
  description = "Hello String that was used"
  value       = format("%s from Environment: %s", var.hello_string, var.stage)
}
