FROM nginx:latest

WORKDIR /etc/nginx/

RUN apk add --no-cache certbot

COPY nginx/renew /etc/periodic/weekly/renew
RUN chmod +x /etc/periodic/weekly/renew

RUN mkdir /var/lib/certbot

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf .

EXPOSE 443

ENTRYPOINT [ "../entrypoint.sh" ]