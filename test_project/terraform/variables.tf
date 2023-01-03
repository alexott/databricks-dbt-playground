variable "db_catalog" {
  type = string
  default = "main"
  description = "Name of the catalog to use"
}

variable "db_schema" {
  type = string
  default = "dbt_exp"
  description = "Name of the schema in the catalog to store tables"
}
