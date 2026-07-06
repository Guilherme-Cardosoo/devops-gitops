output "public_ips" {
  description = "Endereços IP públicos das instâncias"

  value = {
    for instance_name, instance in aws_instance.k3s_nodes :
    instance_name => instance.public_ip
  }
}

output "instance_ids" {
  description = "IDs das instâncias EC2"

  value = {
    for instance_name, instance in aws_instance.k3s_nodes :
    instance_name => instance.id
  }
}