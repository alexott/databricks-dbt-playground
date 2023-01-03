data "databricks_spark_version" "lts" {
  long_term_support = true
}
data "databricks_node_type" "smallest" {
  local_disk = true
}

resource "databricks_job" "dbt_test" {
  name = "DBT Test (${data.databricks_current_user.me.alphanumeric})"
  task {
    task_key = "DBT_Test"
    library {
      pypi {
        package = "dbt-databricks>=1.0.0,<2.0.0"
      }
    }
    job_cluster_key = "dbt_CLI"
    dbt_task {
      warehouse_id      = databricks_sql_endpoint.dbt_test.id
      project_directory = "test_project"
      commands          = ["dbt deps", "dbt seed", "dbt run"]
      catalog           = var.db_catalog
      schema            = var.db_schema
    }
  }
  task {
    task_key = "Update_SQL_Dashboard"
    sql_task {
      warehouse_id = databricks_sql_endpoint.dbt_test.id
      dashboard {
        dashboard_id = databricks_sql_dashboard.dbt_test.id
      }
    }
    depends_on {
      task_key = "DBT_Test"
    }
  }
  job_cluster {
    new_cluster {
      spark_version      = data.databricks_spark_version.lts.id
      node_type_id       = data.databricks_node_type.smallest.id
      data_security_mode = "SINGLE_USER"
      custom_tags = {
        ResourceClass = "SingleNode"
      }
    }
    job_cluster_key = "dbt_CLI"
  }
  git_source {
    url      = "https://github.com/alexott/databricks-dbt-playground.git"
    provider = "gitHub"
    branch   = "main"
  }
}
