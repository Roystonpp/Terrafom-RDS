variable "access_key" {
	default       = "your_access_key"
	type          = "string"
	description   = "Access key"
}

variable "secret_key" {
        default       = "your_secret_key"
        type          = "string"
        description   = "secret key"
}

variable "region" {
        default       = "eu-west-1"
        type          = "string"
        description   = "The chosen region where the cluster is created"
}

variable "instance_type" {
        default       = "db.t2.medium"
        type          = "string"
        description   = "The type of instance being created"
}

variable "public_access" {
        default       = "false"
        type          = "string"
        description   = "Public access"
}

variable "cluster_identifier" {
        default       = "cluster-terraform"
        type          = "string"
        description   = "cluster name"
}

variable "database_name" {
        default       = "Database_name"
        type          = "string"
        description   = "Name of the database"
}

variable "username" {
        default       = "ec2_user"
	type	      = "string"
	description   = "The username for the database"
}

variable "password" {
	default	      = "password"
	type	      = "string"
	description   = "Password for the database"
}

variable "final_snapshot_identifier" {
	default	      = "xxx-snap"
	type	      = "string"
	description   = "Name of the final snap shot"
}

variable "skip_snapshot" {
        default       = "true"
        type          = "string"
        description   = "Name of the final snap shot"
}

variable "backup_retention_period" {
        default       = "5"
        type          = "string"
        description   = "Name of the final snap shot"
}

variable "subnet_group_name" {
        default       = "xxxx-xxxxxx-subnets"
        type          = "string"
        description   = "Name of the subnet the instance will be in"
}

