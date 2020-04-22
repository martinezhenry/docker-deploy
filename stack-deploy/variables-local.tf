locals {

  datos = concat(var.export_list, ["docker stack deploy -c /home/hmartinez/terraform/docker-compose.yml $stack_name"])
  docker_server = "172.17.37.93"
  docker_port = 2000
  docker_user = "hmartinez"
  private_key_file = "C:/Users/hmartinez/Documents/ssh_keys/id_rsa.ppk"
  file_destination = "/home/hmartinez/terraform/docker-compose.yml"

}


