FROM quay.io/keycloak/keycloak as builder

FROM openjdk

ENV WORKDIR=/home/cli
RUN mkdir -p $WORKDIR
WORKDIR $WORKDIR
COPY --from=builder /opt/keycloak/bin/ .