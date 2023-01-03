resource "databricks_sql_endpoint" "dbt_test" {
  num_clusters              = 1
  name                      = "DBT Test (${data.databricks_current_user.me.alphanumeric})"
  cluster_size              = "2X-Small"
  channel {
    name = "CHANNEL_NAME_PREVIEW"
  }
  auto_stop_mins = 5
}
