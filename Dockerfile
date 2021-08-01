FROM node:16-alpine AS build
WORKDIR /usr/src/app
COPY tailwind.config.js /usr/src/app/tailwind.config.js
RUN npm install tailwindcss tailwind-config-viewer; \
 npx tailwind-config-viewer export tcv-out

FROM caddy:2-alpine
WORKDIR /usr/share/caddy/
COPY --from=build /usr/src/app/tcv-out /usr/share/caddy/
EXPOSE 80
