

data "docker_registry_image" "reg_image" {
  name = "${var.image_name}:${var.image_version}"
}

resource "docker_image" "image" {
  name          = data.docker_registry_image.reg_image.name
  pull_triggers = [data.docker_registry_image.reg_image.sha256_digest]
}
