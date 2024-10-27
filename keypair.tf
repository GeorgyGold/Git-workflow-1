# resource "aws_key_pair" "webkey" {
#   key_name   = "web-key"
#   public_key = tls_private_key.oskey.public_key_openssh
# }

# resource "tls_private_key" "oskey" {
#   algorithm = "RSA"
# }

# resource "local_file" "key" {
#   content  = tls_private_key.oskey.private_key_pem
#   filename = "web-key.pem"
# }

### Use when executing on GitLab / GitHub 
# resource "aws_key_pair" "ssh_key" {
#   key_name   = "demo"
#   public_key = var.ssh_key_pair
# }

### Use for Jenkins pipleline
resource "aws_key_pair" "ssh_key" {
  key_name   = var.ssh_key
  public_key ="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsvlSLv5MSkYqxx899uXGjAcVlFbA5/DtIaj3LuTdbtlAJwcRndOUzg9hFBvTLLVwwIE/JR0eQNwrmZiqxQESTJKXFKQgM4Mmatmz9zm8e0EhQJk1Umls30mLV/QRnOXqNz7oNnjXw5XW3hFkzShKZsXUYi+yC8UpIrIoTNe4d518sQqRfEK4kICDg/kOlu3hW86wSBhhYxBV+Q3UaWQq0evtUt6IPdEQDPrVUFzQHmQ/xz8RvQ0zhWXWXyheKXtL9ztj5AOg1S1JhKq+0PCfE+FnZkG6mSJBRvqr+4USOYV3Rm5vC7zL2MAoUS1EKHlRcUb8lLGUxm2Gc2mGbycJNB/FHA5QxpL7NlD7KmzIAfUvZzWDG1S+lGkGYo366fRLia1IYndzIPYkP2K/Z8cTyh/Dm2QW2NgsULGci44bhAc0vVE5GDToAYgJduimLv8uoN7/XK4IGkmZT+FQhdPS7vlW+WcxQa3rg9ivx/gNez0lp/lPhH0eJ9h7IuJapKZ8= ijeomaojiako@Ijeomas-MacBook-Pro.local"
}

### Use when executing locally 
# resource "aws_key_pair" "ssh_key" {
#   key_name   = "terraform-key"
#   public_key = file("~/.ssh/id_rsa.pub")
# }