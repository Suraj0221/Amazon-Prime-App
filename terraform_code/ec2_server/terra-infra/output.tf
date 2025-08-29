#  GET EC2 PUBLIC IP 
output "ec2_public_ip" {
    
  value = aws_instance.my_inst[*].public_ip
}


# STEP5: GET EC2 PRIVATE IP 
output "ec2_private_ip" {
  value = aws_instance.my_inst[*].private_ip
}