output "REGION" {
  value       = var.REGION
  description = "description"
}

output "Image" {
  value       = var.AMIasREGION
  description = "Image"
}
output "link" {
  value = "http://${aws_instance.testterra.public_ip}"
}


