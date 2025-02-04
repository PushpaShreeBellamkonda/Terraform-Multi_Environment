resource "aws_instance" "db" {
        ami = "ami-09c813fb71547fc4f"
        instance_type = lookup(var.instance_type , terraform.workspace)
}
