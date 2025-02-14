
resource "google_container_node_pool" "fail" {
  autoscaling {
    max_node_count = "4"
    min_node_count = "1"
  }

  cluster            = google_container_cluster.fail.name
  initial_node_count = "2"
  location           = "us-west1"

  management {
    auto_repair  = "true"
    auto_upgrade = "true"
  }

  max_pods_per_node = "110"
  name              = "async-pool-2"

  node_config {
    disk_size_gb = "400"
    disk_type    = "pd-ssd"
    image_type   = "SomethingElse"

    labels = {
      async = "true"
    }

    local_ssd_count = "0"
    machine_type    = "custom-32-65536"

    metadata = {
      async                    = "true"
      disable-legacy-endpoints = "true"
    }

    oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
    preemptible     = "false"
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = "true"
      enable_secure_boot          = "true"
    }
  }

  node_count     = "1"
  node_locations = ["us-west1-b", "us-west1-a"]
  project        = "test-project"

  upgrade_settings {
    max_surge       = "1"
    max_unavailable = "0"
  }

  version = "1.14.10-gke.36"
  zone    = "us-west1"
}
