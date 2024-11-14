variable "hello_string" {
  description = "This is a String for local-exec"
  type        = string
  nullable    = false
}

variable "stage" {
  description = "Environment"
  type        = string
  nullable    = false
}
