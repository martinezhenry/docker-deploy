/*resource "null_resource" "validate_stack" {
  count = (length(var.export_list) >= 1 && contains(var.export_list, "stack_stack")) ? 1 : 0
}*/

resource "null_resource" "docker_compose" {
  triggers = {
    image_id = "${var.image_name}:${var.image_version}"
  }
  
  provisioner "local-exec" {
    working_dir = "C:/Temp"
    command = "git clone ${var.docker_repo} docker --branch ${var.branch}"
  }

  provisioner "file" {

    source = var.file_source
    destination = local.file_destination

    connection {
      type = "ssh"
      user = "hmartinez"
      host = local.docker_server
      password = "hmartinez"
	  
    }

  }


  provisioner "remote-exec" {

    inline = [
    for num in local.datos:
    num
    ]
    connection {
      type = "ssh"
      user = local.docker_user
      host = local.docker_server
      password = "hmartinez"
    }
  }


  provisioner "local-exec" {
    working_dir = "C:/Temp"
    command = "rm -fr docker"
  }

}
