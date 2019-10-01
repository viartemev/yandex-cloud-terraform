resource "yandex_vpc_network" "qa-net" {
  name = "qa-network"
  description = "QA network"
  labels = {
    enviroment = "qa"
  }
}

resource "yandex_vpc_subnet" "qa-subnet-a" {
  name           = "qa-subnet-a"
  v4_cidr_blocks = ["10.0.0.0/16"]
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.qa-net.id}"
}

resource "yandex_vpc_subnet" "qa-subnet-b" {
  name           = "qa-subnet-b"
  v4_cidr_blocks = ["10.1.0.0/16"]
  zone           = "ru-central1-b"
  network_id     = "${yandex_vpc_network.qa-net.id}"
}

resource "yandex_vpc_subnet" "qa-subnet-c" {
  name           = "qa-subnet-c"
  v4_cidr_blocks = ["10.2.0.0/16"]
  zone           = "ru-central1-c"
  network_id     = "${yandex_vpc_network.qa-net.id}"
}

