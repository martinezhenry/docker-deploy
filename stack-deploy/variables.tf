variable "image_name" {
  type = string
}

variable "image_version" {
  type = string
}

variable "target_port" {
  type = string
}

variable "publish_port" {
  type = string
}

variable "replicas_nr" {
  type = number
}

variable "stack_name" {
  type = string
}

variable "export_list" {
  type = list(string)


}


variable "docker_repo" {
  type = string
}

variable "branch" {
  type = string
}

variable "file_source" {
  type = string
}
