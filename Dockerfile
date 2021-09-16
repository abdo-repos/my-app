FROM node:14.16.0-alpine3.13
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
RUN chown -R app:app /app
RUN chmod 755 /app
COPY package*.json ./
RUN npm i
COPY . ./

EXPOSE 3000

CMD [ "npm","start" ]