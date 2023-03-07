
data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  azs = [
    for az in data.aws_availability_zones.available.names :
    substr(strrev(az), 0, 1)
  ]
}
