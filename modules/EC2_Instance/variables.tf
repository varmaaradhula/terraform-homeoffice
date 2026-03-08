variable "public_key"{

    type = "string"
    description = "public key value"
    default = data.vault_kv_secret_v2.pubkey.data["public_key"]
}

variable "amiId"{
    type = "string"
    description = "ami id value"

}

variable "instance_type" {
    type = "string"
    description = "instance type value"

}

variable "sgname"{
    type = "string"
    description = "security group name"
}

variable "tagname" {
    type = "string"
    description = "tag name value"

}

