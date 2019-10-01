resource "yandex_compute_instance" "gateway-a" {
  name        = "gateway-centos-7-a"
  description = "Gateway instance"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  labels = {
    enviroment = "qa"
    type = "gateway"
  }

  resources {
    cores  = 4
    memory = 8
    core_fraction = 100
  }

  boot_disk {
    auto_delete = true
    initialize_params {
      image_id = "fd83869rbingor0in0ui"
      type = "network-ssd"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.qa-subnet-a.id}"
  }
}

resource "yandex_compute_instance" "gateway-b" {
  name        = "gateway-centos-7-b"
  description = "Gateway instance"
  platform_id = "standard-v1"
  zone        = "ru-central1-b"

  labels = {
    enviroment = "qa"
    type = "gateway"
  }

  resources {
    cores  = 4
    memory = 8
    core_fraction = 100
  }

  boot_disk {
    auto_delete = true
    initialize_params {
      image_id = "fd83869rbingor0in0ui"
      type = "network-ssd"
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.qa-subnet-b.id}"
  }
}