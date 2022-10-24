output "application" {
  value = aws_instance.application.id
}
output "bastion" {
  value = aws_instance.bastion.id
}