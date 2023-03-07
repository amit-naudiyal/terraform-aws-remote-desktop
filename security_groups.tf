#---- SECURITY GROUP ----

resource "aws_security_group" "remote_desktop_security_group" {
  name        = "${var.soln_abbrev}-${var.env_abbrev}-${var.tier_type}"
  description = "${var.soln_abbrev}-${var.env_abbrev}-${var.tier_type}"
  vpc_id      = var.vpc_id

  tags = {
    Name          = "${var.soln_abbrev}-${var.env_abbrev}-${var.tier_type}"
    a_Solution    = var.soln_abbrev
    a_Environment = var.env_abbrev
    a_SolnEnv     = "${var.soln_abbrev}-${var.env_abbrev}"
    a_TierType    = var.tier_type
  }
}
