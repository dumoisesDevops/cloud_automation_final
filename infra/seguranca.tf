resource "aws_flow_log" "vpc_logs" {
  log_destination      = "arn:aws:s3:::vini-clc13-network-terraform-state"
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.main.id
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "sg-default"
  }
}
