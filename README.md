# sslocalhost

Very simple docker setup of a reverse proxy with TLS for **local development environments** without exposing your device to the internet.

## Overview

The [Caddy](https://github.com/caddyserver/caddy) docker container shares the host network and is meant to proxy requests from your [DuckDNS](https://www.duckdns.org/) domain to the host over TLS.

The TLS certificate will be retrieved from [Let's Encrypt](https://letsencrypt.org/) using the ACME DNS challenge, which means it workd without the typical exposure of port 80 to the internet.
