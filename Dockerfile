FROM python:3.12-rc-alpine

RUN pip install termgraph

ARG UID=1000
ARG GID=1000
ARG USER=termgraph
ARG GROUP=termgraph

RUN addgroup -S ${GROUP} -g ${GID} \
    && adduser -S ${USER} -G ${GROUP} -u ${UID}

USER ${USER}:${GROUP}

WORKDIR /data

ENTRYPOINT ["termgraph"]
