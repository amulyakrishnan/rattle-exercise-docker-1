

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
    host = "unix:///var/run/docker.sock"
    registry_auth {
    address = "docker.io/amulyakrishnan123/hello-world-excerise"
    username = "user"
    password = "passwd"
    }
}