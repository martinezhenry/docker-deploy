image_name = "processing-dev.novopayment.net:2202/novotrans/daemon"
image_version = "2.1.3"
target_port = "9000"
publish_port = "2050"
stack_name = "novotrans-ve-vip_novotrans"
replicas_nr = 1

docker_repo = "git@code.novopayment.com:hmartinez/docker.git"
branch = "develop"
file_source = "/tmp/docker/novotrans/daemon/general/docker-compose.yml"

export_list = [
  "export image_name=processing-dev.novopayment.net:2202/novotrans/daemon",
  "export image_version=2.1.3",
  "export publish_port=2050",
  "export stack_name=novotrans-ve-vip_novotrans"
]
