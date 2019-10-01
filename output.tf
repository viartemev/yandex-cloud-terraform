output "internal_ip_address_gateway_a" {
  value = "${yandex_compute_instance.gateway-a.network_interface.0.ip_address}"
}

output "external_ip_address_gateway_a" {
  value = "${yandex_compute_instance.gateway-a.network_interface.0.nat_ip_address}"
}

output "internal_ip_address_gateway_b" {
  value = "${yandex_compute_instance.gateway-b.network_interface.0.ip_address}"
}

output "external_ip_address_gateway_b" {
  value = "${yandex_compute_instance.gateway-b.network_interface.0.nat_ip_address}"
}