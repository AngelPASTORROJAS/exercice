terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}
provider "docker" {}

resource "docker_container" "example" {
    name = "my-container"
    image = "nginx:latest"
    ports {
        internal = 80
        external = 8080
    }
}