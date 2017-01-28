
provider "atlas" {
}

resource "atlas_artifact" "centos7-basebox" {
  name = "sky-uk/centos7-basebox"
  type = "amazon.ami"
  version = "1"
}
