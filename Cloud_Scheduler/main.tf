# Create the main file configuration for Cloud Scheduler job 

resource "google_pubsub_topic" "topic_name" {
    job = var.scheduler_topic_name
  
}

resource "google_cloud_scheduler_job" "job_name" {
  name = var.scheduler_job_name
  description = "The Testing job in cloud scheduler"
  schedule = "*/2 * * *"


pubsub_target{
    #topic.id is the topic's full resource name

    topic_name = google_pubsub_topic.topic.id
    data = base64encode("test")
}
}