
output "master_ip" {
  value = {
    for instance in upcloud_server.master :
    instance.hostname => {
      "public_ip": instance.network_interface[0].ip_address
      "private_ip": instance.network_interface[1].ip_address
    }
  }
}

output "worker_ip" {
  value = {
    for instance in upcloud_server.worker :
    instance.hostname => {
      "public_ip": instance.network_interface[0].ip_address
      "private_ip": instance.network_interface[1].ip_address
    }
  }
}
