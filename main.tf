# Tfsec will report this resource as a potential problem because the role is considered privileged.
resource "google_storage_bucket_iam_member" "potential_problem" {
  bucket = "bucket-name"
  role   = "roles/storage.admin"
  member = "serviceAccount:my-sa@cloudbuild.gserviceaccount.com"
}
