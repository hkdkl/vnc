FROM debian:buster
ENV DEBIAN_FRONTEND=noninteractive
RUN set -ex; \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        expect \
        bash \
        openbox \
        net-tools \
        socat \
        supervisor \
        novnc \
        x11vnc \
        xvfb \
        xterm \
        chromium \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

COPY . /app
RUN chmod +x /app/conf.d/websockify.sh
RUN chmod +x /app/run.sh
RUN chmod +x /app/expect_vnc.sh
CMD ["/app/run.sh"]
