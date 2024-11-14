variable "hello_string" {
  description = "Input for hello_world"
  type        = string
  default     = "Hello World!"
}

variable "stage" {
  description = "Stack stage"
  type        = string
}
