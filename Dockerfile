FROM scratch

ARG TARGETARCH

ADD bin/ferretdb-${TARGETARCH} /ferretdb

EXPOSE 27017

ENTRYPOINT [ "/ferretdb" ]
CMD [ "-mode=diff-normal" ]

LABEL org.opencontainers.image.source=https://github.com/FerretDB/FerretDB
LABEL org.opencontainers.image.url=https://ferretdb.io/
LABEL org.opencontainers.image.title=FerretDB
LABEL org.opencontainers.image.description="A truly Open Source MongoDB alternative"
LABEL org.opencontainers.image.vendor="FerretDB Inc."
LABEL org.opencontainers.image.licenses="Apache-2.0"
