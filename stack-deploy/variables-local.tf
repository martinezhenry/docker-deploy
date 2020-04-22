locals {

  datos = concat(var.export_list, ["docker stack deploy -c /home/hmartinez/terraform/docker-compose.yml $stack_name"])
  docker_server = "172.20.3.30"
  docker_port = 2376
  docker_user = "hmartinez"
  private_key_file = "C:/Users/hmartinez/Documents/ssh_keys/id_rsa.ppk"
  file_destination = "/home/hmartinez/terraform/docker-compose.yml"

}


