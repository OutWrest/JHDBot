#!/bin/sh
certbot certonly --standalone -d johnhammond-bot.dev,www.johnhammond-bot.dev --email pop_eax@johnhammond-bot.dev -n --agree-tos --expand
/usr/sbin/nginx -g "daemon off;"