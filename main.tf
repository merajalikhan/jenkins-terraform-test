terraform {
  required_providers {    
    databricks = {
      source = "databricks/databricks"
    }
  }
}
provider "databricks" {
    host =  var.databricks_host 
    token = var.pa_token 
}

data "databricks_current_user" "logged_in_user" {
    
}
