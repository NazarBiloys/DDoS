FROM nginx:latest

RUN apt-get update \
    && apt-get install -y nginx-extras \
    && rm -rf /var/lib/apt/lists/*

CMD ["nginx", "-g", "daemon off;"]
