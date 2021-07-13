FROM debian:unstable-slim
ENV DEBIAN_FRONTEND=noninteractive
RUN set -ex; \
    apt-get update && apt-get install -y --no-install-recommends expect bash fluxbox net-tools socat supervisor novnc x11vnc xvfb xterm firefox nano procps git geany thunar dbus-x11 eog mpv python3-pip && apt-get autoclean && apt-get autoremove && rm -rf /var/lib/apt/lists/* && git clone https://github.com/DIGITALCRIMINAL/OnlyFans && pip install -r OnlyFans/requirements.txt

COPY . /app
RUN chmod +x /app/conf.d/websockify.sh
RUN chmod +x /app/run.sh
RUN chmod +x /app/expect_vnc.sh
CMD ["/app/run.sh"]
