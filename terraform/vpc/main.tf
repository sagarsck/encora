resource "aws_vpc" "myvpc"{
    cidr_block = var.vpc_cidr_block
     tags ={
        Name = var.my_custom_vpc
     }
}
resource "aws_subnet" "public_subnet_1"{
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.public_subnet_1
    availability_zone = var.public_subnet_1_region
    map_public_ip_on_launch = true
    tags ={
        Name = var.public_subnet_1_name
    }
}

resource "aws_subnet" "public_subnet_2"{
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.public_subnet_2
    availability_zone = var.public_subnet_2_region
    map_public_ip_on_launch = true
    tags ={
        Name = var.public_subnet_2_name
    }
}
resource "aws_internet_gateway" "customIG"{
    vpc_id = aws_vpc.myvpc.id
    tags ={
        Name = var.IGname
    }
    }
resource "aws_route_table" "customroute"{
    vpc_id = aws_vpc.myvpc.id
    route  {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.customIG.id
    }
    tags ={
        Name = var.routetable_name
    }
}
resource "aws_route_table_association" "public_asso-1"{
    subnet_id= aws_subnet.public_subnet_1.id
    route_table_id= aws_route_table.customroute.id
}
resource "aws_route_table_association" "public_asso-2"{
    subnet_id= aws_subnet.public_subnet_2.id
    route_table_id= aws_route_table.customroute.id
}
resource "aws_subnet" "private_subnet_1"{
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_1
    availability_zone = var.private_subnet_1_region
    tags ={
        Name = var.private_subnet_1_name
    }
}
resource "aws_subnet" "private_subnet_2"{
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_2
    availability_zone = var.private_subnet_2_region
    tags ={
        Name = var.private_subnet_2_name
    }
}