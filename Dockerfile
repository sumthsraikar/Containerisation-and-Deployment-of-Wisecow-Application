FROM ubuntu:latest
RUN apt-get update && apt-get install -y bash netcat-openbsd cowsay fortune-mod && rm -rf /var/lib/apt/lists/*
ENV PATH="/usr/games:${PATH}"
WORKDIR /app
COPY wisecow.sh .
RUN chmod +x wisecow.sh
EXPOSE 4499
CMD ["./wisecow.sh"]
