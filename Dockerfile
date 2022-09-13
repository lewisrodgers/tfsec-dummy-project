FROM aquasec/tfsec

ARG user_name

USER root

RUN apk add --no-cache git \
	&& git clone https://github.com/${user_name}/tfsec-dummy-project.git \
    && tfsec tfsec-dummy-project