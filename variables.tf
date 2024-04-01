variable "cidr_block"{
    default = "10.0.0.0/16"
    type = string
}

variable "common_tags"{
    type = map
    default ={}
}

variable "vpc_tags"{
    type = map 
    default ={}
}

variable "project_name"{
    type = string
}

variable "environment"{
    type = string
}

variable "enable_dns_hostnames"{
    type = bool
    default = true
}

variable "igw_tags"{
    type= map 
    default ={}
}

variable "public_subnet_tags"{
    type = map 
    default = {}
}

variable "public_subnet_cidr"{
    type = list 
    validation{
       condition = length(var.public_subnet_cidr) == 2
       error_message = "Please give 2 public valid subnet CIDR" 
    }
}

variable "private_subnet_tags"{
    type = map 
    default = {}
}

variable "private_subnet_cidr"{
    type = list 
    validation{
       condition = length(var.private_subnet_cidr) == 2
       error_message = "Please give 2 public valid subnet CIDR" 
    }
}

variable "database_subnet_tags"{
    type = map 
    default = {}
}

variable "database_subnet_cidr"{
    type = list 
    validation{
       condition = length(var.database_subnet_cidr) == 2
       error_message = "Please give 2 public valid subnet CIDR" 
    }
}

variable "nat_gateway_tags"{
    #type = map 
    default = {}

}

variable "public_routr_table_tags"{
    default = {}

}

variable "private_routr_table_tags"{
    default = {}

}

variable "database_routr_table_tags"{
    default = {}

}

variable "is_peering_required"{
    type = bool
    default = false
}

variable "acceptor_vpc_id"{
    type = string
    default = ""
}

variable "peering_tags"{
    default = {}
    type = map
}

