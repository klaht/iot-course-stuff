FROM eclipse-mosquitto:latest

ENV HOST 0.0.0.0

COPY mosquitto.conf /mosquitto/config/mosquitto.conf

EXPOSE 1883
EXPOSE 8080

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]