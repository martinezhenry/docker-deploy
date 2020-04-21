/*resource "null_resource" "validate_stack" {
  count = (length(var.export_list) >= 1 && contains(var.export_list, "stack_stack")) ? 1 : 0
}*/

resource "null_resource" "docker_compose" {
  triggers = {
    image_id = "${var.image_name}:${var.image_version}"
  }
  depends_on = [
    null_resource.validate_stack,
  ]

  provisioner "local-exec" {
    working_dir = "/tmp"
    command = "git clone ${var.docker_repo} docker --branch ${var.branch}"
  }

  provisioner "file" {

    source = var.file_source
    destination = "${local.file_destination}"

    connection {
      type = "ssh"
      user = "docker"
      host = local.docker_server
      private_key = file(local.private_key_file)
    }

  }


  provisioner "remote-exec" {

    inline = [
    for num in var.export_list:
    num
    ]
    connection {
      type = "ssh"
      user = local.docker_user
      host = local.docker_server
      private_key = file(local.private_key_file)
    }
  }


  provisioner "local-exec" {
    working_dir = "/tmp"
    command = "rm -fr docker"
  }

}
