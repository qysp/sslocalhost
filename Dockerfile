FROM caddy:2.6.1-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/duckdns

FROM caddy:2.6.1-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
