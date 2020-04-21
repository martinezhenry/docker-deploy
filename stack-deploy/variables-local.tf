locals {

  datos = concat(var.export_list, ["docker stack deploy -c /home/docker/portainer/docker-compose.yml $stack_name"])
  docker_server = "172.20.3.30"
  docker_port = 2376
  docker_user = "hmartinez"
  private_key_file = "~/.docker/machine/machines/manager-1/id_rsa"
  file_destination = "/home/docker/portainer/docker-compose.yml"

}


