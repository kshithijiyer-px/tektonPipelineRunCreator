#!/bin/sh
# create-pipeline.sh

# Infinite loop to create the pipeline every 2 minutes
while true; do
    echo "Creating Tekton pipeline..."
    kubectl create -f /my-pipeline-run.yaml
    echo "Pipeline created. Sleeping for 2 minutes..."
    sleep 120  # Sleep for 2 minutes
done
