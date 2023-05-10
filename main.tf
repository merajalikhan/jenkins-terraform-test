terraform {
  required_providers {    
    databricks = {
      source = "databricks/databricks"
    }
  }
}
provider "databricks" {
    host =  var.databricks_host #  "https://adb-1710922579126448.8.azuredatabricks.net/"
    token = var.pa_token # "dapid24a84b27054a5fccabc962278928be0-3"
}

data "databricks_current_user" "logged_in_user" {
    
}
