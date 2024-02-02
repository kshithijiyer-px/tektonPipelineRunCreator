# Start from the busybox image
FROM busybox

# Add kubectl
ADD https://storage.googleapis.com/kubernetes-release/release/v1.20.0/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

# Add your Tekton PipelineRun YAML file
COPY my-pipeline-run.yaml /my-pipeline-run.yaml

# Add the script that creates the pipeline
COPY create-pipeline.sh /create-pipeline.sh
RUN chmod +x /create-pipeline.sh

# Set the script as the entry point
ENTRYPOINT ["/create-pipeline.sh"]
