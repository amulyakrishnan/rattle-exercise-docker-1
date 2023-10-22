# resource "docker_image" "hello-world-app" {
#     name = "hello-world-app"

#     build {
#         path = "./../app"
#         dockerfile = "app.Dockerfile"
#     }
# }

# Create a docker container resource
resource "docker_container" "hello_world" {   
  # the name of the container
  name = "amulyakrishnan123/hello-world-excerise"
  image = "docker_image.hello-world-app.a6cfd7e88d82"
    ports {
    internal = "80"
    external = "8080"
  }
}
