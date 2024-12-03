output "jenkins_ec2_instance_id" {
  value = aws_instance.jenkins_ec2_instance.id
}



output "sg_ec2_sg_ssh_http_id" {
  value = aws_security_group.ec2_sg_ssh_http.id
}

output "sg_ec2_jenkins_port_8080" {
  value = aws_security_group.ec2_jenkins_port_8080.id
}



output "ssh_connection_string_for_ec2" {
  value = format("%s%s", "ssh -i /Users/rahulwagh/.ssh/aws_ec2_terraform ubuntu@", aws_instance.jenkins_ec2_instance.public_ip)
}



output "dev_proj_1_ec2_instance_public_ip" {
  value = aws_instance.jenkins_ec2_instance.public_ip
}


output "dev_proj_1_lb_target_group_arn" {
  value = aws_lb_target_group.dev_proj_1_lb_target_group.arn
}


output "aws_lb_dns_name" {
  value = aws_lb.dev_proj_1_lb.dns_name
}

output "aws_lb_zone_id" {
  value = aws_lb.dev_proj_1_lb.zone_id
}


output "hosted_zone_id" {
  value = data.aws_route53_zone.dev_proj_1_jhooq_org.zone_id
}


output "dev_proj_1_acm_arn" {
  value = aws_acm_certificate.dev_proj_1_acm_arn.arn
}