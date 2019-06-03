66.36

gcloud config set compute/zone us-central1-a
gcloud beta container --project "kubernets-242606" clusters create "kubernetes" --zone "us-central1-a" --no-enable-basic-auth --cluster-version "1.12.7-gke.10" --machine-type "f1-micro" --image-type "COS" --disk-type "pd-standard" --disk-size "100" --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --num-nodes "3" --enable-cloud-logging --enable-cloud-monitoring --enable-ip-alias --network "projects/kubernets-242606/global/networks/default" --subnetwork "projects/kubernets-242606/regions/us-central1/subnetworks/default" --default-max-pods-per-node "110" --addons HorizontalPodAutoscaling,HttpLoadBalancing --enable-autoupgrade --enable-autorepair

gcloud container clusters get-credentials kubernetes

gcloud container clusters delete kubernetes --quiet