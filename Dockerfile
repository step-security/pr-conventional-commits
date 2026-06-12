FROM node:24-alpine

COPY dist/index.js /index.js

ENTRYPOINT ["node", "/index.js"]
