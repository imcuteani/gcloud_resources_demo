# output block for cloud scheduler 

output "google_cloud_scheduler_topic_name" {
  value = google_pubsub_topic.topic_name.job
}

output "google_cloud_scheduler_job_name" {
  value = google_cloud_scheduler_job.job_name.name
}