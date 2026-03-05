FROM jellyfin/jellyfin:latest

RUN apt-get update && apt-get install -y rclone

COPY rclone.conf /config/rclone/rclone.conf
COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]