FROM node:25-alpine@sha256:bdf2cca6fe3dabd014ea60163eca3f0f7015fbd5c7ee1b0e9ccb4ced6eb02ef4

RUN apk add --no-cache 'libcrypto3=3.5.7-r0' 'libssl3=3.5.7-r0'

COPY dist/index.js /index.js

ENTRYPOINT ["node", "/index.js"]
