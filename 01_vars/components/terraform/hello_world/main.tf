module "hello" {
  source       = "../../../../tfmodules/hello"
  hello_string = var.hello_string
  stage        = var.stage
}
