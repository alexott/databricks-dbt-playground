resource "databricks_sql_visualization" "amount_pie_5d8d66e0_d3af_47ba_a8da_f32460febcad7102bf8b_022e_40ec_8795_c2d455ac9b8c" {
  type       = "chart"
  query_plan = "{\"selects\": [{\"column\": \"customer_name\"}, {\"function\": \"SUM\", \"args\": [{\"column\": \"total_sale\"}], \"alias\": \"column_56712d2721375\"}], \"groups\": [{\"column\": \"customer_name\"}]}"
  query_id   = databricks_sql_query.dbt_customer_5d8d66e0_d3af_47ba_a8da_f32460febcad.id
  options    = "{\"version\": 2, \"globalSeriesType\": \"pie\", \"sortX\": true, \"sortY\": true, \"legend\": {\"traceorder\": \"normal\"}, \"xAxis\": {\"type\": \"-\", \"labels\": {\"enabled\": true}}, \"yAxis\": [{\"type\": \"-\"}, {\"type\": \"-\", \"opposite\": true}], \"alignYAxesAtZero\": true, \"error_y\": {\"type\": \"data\", \"visible\": true}, \"series\": {\"stacking\": null, \"error_y\": {\"type\": \"data\", \"visible\": true}}, \"seriesOptions\": {\"column_56712d2721375\": {\"yAxis\": 0, \"type\": \"pie\", \"name\": \"Bought\"}}, \"valuesOptions\": {}, \"direction\": {\"type\": \"counterclockwise\"}, \"sizemode\": \"diameter\", \"coefficient\": 1, \"numberFormat\": \"0,0[.]00000\", \"percentFormat\": \"0[.]00%\", \"textFormat\": \"\", \"missingValuesAsZero\": true, \"useAggregationsUi\": true, \"swappedAxes\": false, \"dateTimeFormat\": \"DD/MM/YY HH:mm\", \"showDataLabels\": true, \"columnConfigurationMap\": {\"x\": {\"column\": \"customer_name\", \"id\": \"column_56712d2721470\"}, \"y\": [{\"id\": \"column_56712d2721375\", \"column\": \"total_sale\", \"transform\": \"SUM\"}]}, \"isAggregationOn\": true, \"condensed\": true, \"withRowNumber\": true}"
  name       = "Amount pie"
}
resource "databricks_sql_visualization" "bar_1_046e565e_4971_4091_96c9_b6e3b74e6e77c5befd87_4645_4148_bb70_eaeec39b549b" {
  type       = "chart"
  query_plan = "{\"selects\": [{\"function\": \"SUM\", \"args\": [{\"column\": \"total_sale\"}], \"alias\": \"column_56712d2710234\"}, {\"column\": \"order_date\"}], \"groups\": [{\"column\": \"order_date\"}]}"
  query_id   = databricks_sql_query.dbt_total_046e565e_4971_4091_96c9_b6e3b74e6e77.id
  options    = "{\"version\": 2, \"globalSeriesType\": \"column\", \"sortX\": true, \"sortY\": true, \"legend\": {\"traceorder\": \"normal\"}, \"xAxis\": {\"type\": \"-\", \"labels\": {\"enabled\": true}, \"title\": {\"text\": \"Day\"}}, \"yAxis\": [{\"type\": \"-\", \"title\": {\"text\": \"Sold amount, $\"}}, {\"type\": \"-\", \"opposite\": true}], \"alignYAxesAtZero\": true, \"error_y\": {\"type\": \"data\", \"visible\": true}, \"series\": {\"stacking\": null, \"error_y\": {\"type\": \"data\", \"visible\": true}}, \"seriesOptions\": {\"column_56712d2710233\": {\"name\": \"total_items\", \"yAxis\": 0, \"type\": \"column\"}, \"column_56712d2710234\": {\"name\": \"total_sale\", \"yAxis\": 0, \"type\": \"column\"}}, \"valuesOptions\": {}, \"direction\": {\"type\": \"counterclockwise\"}, \"sizemode\": \"diameter\", \"coefficient\": 1, \"numberFormat\": \"0,0[.]00000\", \"percentFormat\": \"0[.]00%\", \"textFormat\": \"\", \"missingValuesAsZero\": true, \"useAggregationsUi\": true, \"swappedAxes\": false, \"dateTimeFormat\": \"DD/MM/YY HH:mm\", \"showDataLabels\": false, \"columnConfigurationMap\": {\"y\": [{\"column\": \"total_sale\", \"transform\": \"SUM\", \"id\": \"column_56712d2710234\"}], \"x\": {\"column\": \"order_date\", \"id\": \"column_56712d2710235\"}}, \"isAggregationOn\": true}"
  name       = "Bar 1"
}
resource "databricks_sql_visualization" "bar_1_e33939f0_4848_459b_a465_7fd6a4f1603906387b79_1927_425b_84de_0125f35a33a7" {
  type       = "chart"
  query_plan = "{\"selects\": [{\"column\": \"date\"}, {\"function\": \"SUM\", \"args\": [{\"column\": \"count\"}], \"alias\": \"column_56712d2729681\"}], \"groups\": [{\"column\": \"date\"}]}"
  query_id   = databricks_sql_query.dbt_incorrect_entries_e33939f0_4848_459b_a465_7fd6a4f16039.id
  options    = "{\"version\": 2, \"globalSeriesType\": \"column\", \"sortX\": true, \"sortY\": true, \"legend\": {\"traceorder\": \"normal\"}, \"xAxis\": {\"type\": \"-\", \"labels\": {\"enabled\": true}, \"title\": {\"text\": \"Date\"}}, \"yAxis\": [{\"type\": \"-\", \"title\": {\"text\": \"Incorrect records\"}}, {\"type\": \"-\", \"opposite\": true}], \"alignYAxesAtZero\": true, \"error_y\": {\"type\": \"data\", \"visible\": true}, \"series\": {\"stacking\": null, \"error_y\": {\"type\": \"data\", \"visible\": true}}, \"seriesOptions\": {\"column_56712d2729681\": {\"name\": \"count\", \"yAxis\": 0, \"type\": \"column\"}}, \"valuesOptions\": {}, \"direction\": {\"type\": \"counterclockwise\"}, \"sizemode\": \"diameter\", \"coefficient\": 1, \"numberFormat\": \"0,0[.]00000\", \"percentFormat\": \"0[.]00%\", \"textFormat\": \"\", \"missingValuesAsZero\": true, \"useAggregationsUi\": true, \"swappedAxes\": false, \"dateTimeFormat\": \"DD/MM/YY HH:mm\", \"showDataLabels\": false, \"columnConfigurationMap\": {\"x\": {\"column\": \"date\", \"id\": \"column_56712d2729680\"}, \"y\": [{\"column\": \"count\", \"transform\": \"SUM\", \"id\": \"column_56712d2729681\"}]}, \"isAggregationOn\": true}"
  name       = "Bar 1"
}
resource "databricks_sql_dashboard" "dbt_test" {
  name = "DBT Test (${data.databricks_current_user.me.alphanumeric})"
}
resource "databricks_sql_visualization" "items_pie_5d8d66e0_d3af_47ba_a8da_f32460febcad4602ed92_71c2_4a4e_9d9b_ef19ca92d7bd" {
  type       = "chart"
  query_plan = "{\"selects\": [{\"column\": \"customer_name\"}, {\"function\": \"SUM\", \"args\": [{\"column\": \"total_items\"}], \"alias\": \"column_56712d2721617\"}], \"groups\": [{\"column\": \"customer_name\"}]}"
  query_id   = databricks_sql_query.dbt_customer_5d8d66e0_d3af_47ba_a8da_f32460febcad.id
  options    = "{\"version\": 2, \"globalSeriesType\": \"pie\", \"sortX\": true, \"sortY\": true, \"legend\": {\"traceorder\": \"normal\"}, \"xAxis\": {\"type\": \"-\", \"labels\": {\"enabled\": true}}, \"yAxis\": [{\"type\": \"-\"}, {\"type\": \"-\", \"opposite\": true}], \"alignYAxesAtZero\": true, \"error_y\": {\"type\": \"data\", \"visible\": true}, \"series\": {\"stacking\": null, \"error_y\": {\"type\": \"data\", \"visible\": true}}, \"seriesOptions\": {\"column_56712d2721617\": {\"yAxis\": 0, \"type\": \"pie\", \"name\": \"Items ordered\"}}, \"valuesOptions\": {}, \"direction\": {\"type\": \"counterclockwise\"}, \"sizemode\": \"diameter\", \"coefficient\": 1, \"numberFormat\": \"0,0[.]00000\", \"percentFormat\": \"0[.]00%\", \"textFormat\": \"\", \"missingValuesAsZero\": true, \"useAggregationsUi\": true, \"swappedAxes\": false, \"dateTimeFormat\": \"DD/MM/YY HH:mm\", \"showDataLabels\": true, \"columnConfigurationMap\": {\"x\": {\"column\": \"customer_name\", \"id\": \"column_56712d2721615\"}, \"y\": [{\"id\": \"column_56712d2721617\", \"column\": \"total_items\", \"transform\": \"SUM\"}]}, \"isAggregationOn\": true, \"condensed\": true, \"withRowNumber\": true}"
  name       = "Items pie"
}
resource "databricks_sql_widget" "r36e0bb8df40" {
  visualization_id = databricks_sql_visualization.amount_pie_5d8d66e0_d3af_47ba_a8da_f32460febcad7102bf8b_022e_40ec_8795_c2d455ac9b8c.visualization_id
  title            = "Amount spent by customer"
  position {
    size_y = 8
    size_x = 3
    pos_y  = 8
  }
  dashboard_id = databricks_sql_dashboard.dbt_test.id
}
resource "databricks_sql_widget" "r4a471bd2c3b" {
  visualization_id = databricks_sql_visualization.items_pie_5d8d66e0_d3af_47ba_a8da_f32460febcad4602ed92_71c2_4a4e_9d9b_ef19ca92d7bd.visualization_id
  title            = "Items bought by customer"
  position {
    size_y = 8
    size_x = 3
    pos_y  = 8
    pos_x  = 3
  }
  dashboard_id = databricks_sql_dashboard.dbt_test.id
}
resource "databricks_sql_widget" "r7c814ebbc71" {
  visualization_id = databricks_sql_visualization.bar_1_e33939f0_4848_459b_a465_7fd6a4f1603906387b79_1927_425b_84de_0125f35a33a7.visualization_id
  title            = "DBT: Incorrect entries"
  position {
    size_y = 8
    size_x = 3
    pos_y  = 16
  }
  dashboard_id = databricks_sql_dashboard.dbt_test.id
}
resource "databricks_sql_widget" "re00847e33f3" {
  visualization_id = databricks_sql_visualization.bar_1_046e565e_4971_4091_96c9_b6e3b74e6e77c5befd87_4645_4148_bb70_eaeec39b549b.visualization_id
  title            = "Total sold: amount"
  position {
    size_y = 8
    size_x = 6
  }
  dashboard_id = databricks_sql_dashboard.dbt_test.id
}
