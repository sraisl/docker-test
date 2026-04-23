target "docker-metadata-action" {}

group "default" {
  targets = ["app"]
}

target "app" {
  inherits   = ["docker-metadata-action"]
  context    = "."
  dockerfile = "Dockerfile"
}
