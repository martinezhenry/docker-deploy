

resource "docker_service" "service" {
  name = var.service_name

  task_spec {
    container_spec {
      image = var.image_id
    }
  }

  endpoint_spec {
    ports {
      target_port = var.target_port
      published_port = var.publish_port
    }
  }
}

