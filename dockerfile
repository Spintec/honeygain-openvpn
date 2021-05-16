FROM honeygain/honeygain
USER root

COPY runtime_script /app/
RUN apt update && \
    apt install openvpn -y
ENTRYPOINT ["bash", "runtime_script"]

