FROM ubuntu:latest

# Add Supervisor
COPY install-packages.sh .
RUN chmod +x install-packages.sh
RUN ./install-packages.sh
COPY supervisord.conf /etc

# Download AirConnect
RUN wget --no-check-certificate --output-document=/bin/airupnp-x86-64 https://raw.githubusercontent.com/philippe44/AirConnect/master/bin/airupnp-x86-64 && chmod +x /bin/airupnp-x86-64
RUN wget --no-check-certificate --output-document=/bin/aircast-x86-64 https://raw.githubusercontent.com/philippe44/AirConnect/master/bin/aircast-x86-64 && chmod +x /bin/aircast-x86-64

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
