FROM node:lts-alpine

ARG WORK_DIR
ARG APP_DIR
ARG CONTAINER_HOST
ARG CONTAINER_PORT

WORKDIR /${WORK_DIR}

ENV APP_DIR=${APP_DIR}
ENV PORT=${CONTAINER_PORT}
ENV HOST=${CONTAINER_HOST}

EXPOSE ${CONTAINER_PORT}

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["sh", "-c", "yarn --cwd ${APP_DIR} dev"]
