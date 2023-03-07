
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# EC2 instances
resource "aws_instance" "remote_desktop" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.remote_desktop_security_group.id]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = var.system_volume_size
    delete_on_termination = true
  }

  tags = {
    Name            = "${var.soln_abbrev}-${var.env_abbrev}-${var.tier_type}-compute"
    a_Solution      = var.soln_abbrev
    a_Environment   = var.env_abbrev
    a_SolnEnv       = "${var.soln_abbrev}-${var.env_abbrev}"
    a_TierArchetype = var.tier_archetype
    a_TierType      = var.tier_type
    a_OS            = var.os_type
    aws_backup      = "true"
  }

}
