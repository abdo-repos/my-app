FROM node:14.16.0-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY --chown=app:app package*.json ./
RUN npm i
COPY --chown=app:app . ./

EXPOSE 3000

CMD [ "npm","start" ]