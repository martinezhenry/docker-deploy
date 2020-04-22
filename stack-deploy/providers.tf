### Configure the Docker provider
provider "docker" {
  host = "tcp://${local.docker_server}:${local.docker_port}/"

  # -> or the following
  #ca_material = "${file(pathexpand("~/.docker/machine/machines/host-1/ca.pem"))}" # this can be omitted
  cert_material = file(pathexpand("C:/Users/hmartinez/Documents/cert.pem"))
  key_material = file(pathexpand("C:/Users/hmartinez/Documents/key.pem"))

  registry_auth {
    address = "processing-dev.novopayment.net:2202"
    username = "hmartinez"
    password = "hmartinez"
  }

}


