variable "owner" {
  type = string
  default = "This is Simplilearn"
}

resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo ${var.owner} > file_${null_resource.this.id}.txt"
  }
}

output "names" {
  value = null_resource.names
}
