FROM aquasec/tfsec
USER root
RUN apk add --no-cache git && git clone https://github.com/lewisrodgers/tfsec-dummy-project.git
RUN tfsec tfsec-dummy-project