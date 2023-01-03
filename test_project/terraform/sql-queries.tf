resource "databricks_sql_query" "dbt_customer_5d8d66e0_d3af_47ba_a8da_f32460febcad" {
  query          = "select * from ${var.db_catalog}.${var.db_schema}.gold_orders_customer"
  name           = "DBT Customer (${data.databricks_current_user.me.alphanumeric})"
  data_source_id = databricks_sql_endpoint.dbt_test.data_source_id
}
resource "databricks_sql_query" "dbt_incorrect_entries_e33939f0_4848_459b_a465_7fd6a4f16039" {
  query          = "select to_date(order_date_time) as date, count(1) as count \nfrom ${var.db_catalog}.${var.db_schema}.quarantine_orders\ngroup by to_date(order_date_time)"
  name           = "DBT Incorrect entries (${data.databricks_current_user.me.alphanumeric})"
  data_source_id = databricks_sql_endpoint.dbt_test.data_source_id
}
resource "databricks_sql_query" "dbt_total_046e565e_4971_4091_96c9_b6e3b74e6e77" {
  query          = "select * from ${var.db_catalog}.${var.db_schema}.gold_orders_total LIMIT 1000"
  name           = "DBT Total (${data.databricks_current_user.me.alphanumeric})"
  data_source_id = databricks_sql_endpoint.dbt_test.data_source_id
}
