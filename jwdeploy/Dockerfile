FROM python:3
RUN pip install ansible
VOLUME ["/deployments", "/root/.ssh/private_key"]
COPY ssh_config /root/.ssh/config