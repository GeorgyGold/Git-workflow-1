####################################################

### Optional 
### For CloudFlare only 

####################################################

# data "cloudflare_zone" "this" {
#   name = var.domain
# }

# Create an A record in the hosted zone
resource "aws_route53_record" "DDChamp" {
  zone_id    = "Z088876238H21LA79Y443"
  name       = var.fqdn
  type       = "A"
  ttl        = "300"
  records    = [aws_instance.demo.public_ip]
  depends_on = [aws_instance.demo]
}