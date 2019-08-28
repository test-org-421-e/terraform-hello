variable "hello_world" {
  default = "HELLO WORLD!"
}

resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 12
}

output "greeting" {
  value = "${var.hello_world}"
}
