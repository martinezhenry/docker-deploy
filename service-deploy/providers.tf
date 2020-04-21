### Configure the Docker provider
provider "docker" {
  host = "tcp://${var.docker_server}:${var.docker_port}/"

  # -> or the following
  #ca_material = "${file(pathexpand("~/.docker/machine/machines/host-1/ca.pem"))}" # this can be omitted
  cert_material = file(pathexpand("~/.docker/machine/machines/manager-1/cert.pem"))
  key_material = file(pathexpand("~/.docker/machine/machines/manager-1/key.pem"))

  registry_auth {
    address = "registry.hub.docker.com"
    username = "martinezhenry"
    password = "d13b7db5-42e8-4637-ba7b-6d56cc644605"
  }

}