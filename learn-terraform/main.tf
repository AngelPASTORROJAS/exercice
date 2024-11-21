provider "docker" {
    host = "unix://var/run/docker.stock"
}
resource "docker_container" "example" {
    name = "my-container"
    image = "nginx:latest"
    ports {
        internal = 80
        external = 8080
    }
}