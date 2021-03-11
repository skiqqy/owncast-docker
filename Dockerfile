FROM ubuntu:latest

EXPOSE 8080
EXPOSE 1935

RUN apt update && apt install bash curl unzip -y
RUN curl -s https://owncast.online/install.sh | bash
ADD entry.sh /entry.sh
ENTRYPOINT ["sh", "/entry.sh"]
