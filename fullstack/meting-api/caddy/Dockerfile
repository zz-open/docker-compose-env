ARG CADDY_VERSION=latest
FROM caddy:${CADDY_VERSION}

RUN mkdir -p /etc/caddy/ssl

COPY ./caddy/Caddyfile /etc/caddy/Caddyfile

EXPOSE 80 443
