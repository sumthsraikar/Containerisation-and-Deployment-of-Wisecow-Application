FROM ubuntu:22.04
WORKDIR /app
COPY wisecow.sh /app/wisecow.sh
RUN apt-get update && apt-get install -y fortune-mod cowsay netcat && rm -rf /var/lib/apt/lists/*
RUN chmod +x /app/wisecow.sh
EXPOSE 4499
CMD ["./wisecow.sh"]
