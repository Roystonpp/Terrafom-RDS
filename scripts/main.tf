provider "aws" {
   access_key   = "${var.access_key}"
   secret_key   = "${var.secret_key}"
   region       = "${var.region}"
}


resource "aws_rds_cluster_instance" "cluster_instance" {
  count                   = 1
  identifier              = "cluster-terraform-${count.index}"
  cluster_identifier      = "${aws_rds_cluster.rds_cluster.id}"
  instance_class          = "${var.instance_type}"
  publicly_accessible     = "${var.public_access}"
}


resource "aws_rds_cluster" "rds_cluster" {
  cluster_identifier        = "${var.cluster_identifier}"
  availability_zones        = ["eu-west-1a", "eu-west-1b"]
  database_name             = "${var.database_name}"
  master_username           = "${var.username}"
  master_password           = "${var.password}"
  final_snapshot_identifier = "${var.final_snapshot_identifier}"
  skip_final_snapshot       = "${var.skip_snapshot}"
  backup_retention_period   = "${var.backup_retention_period}"
  db_subnet_group_name      = "${var.subnet_group_name}"
}

