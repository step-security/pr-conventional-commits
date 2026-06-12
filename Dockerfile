FROM node:26-alpine@sha256:3ad34ca6292aec4a91d8ddeb9229e29d9c2f689efd0dd242860889ac71842eba

RUN apk add --no-cache 'libcrypto3=3.5.7-r0' 'libssl3=3.5.7-r0'

COPY dist/index.js /index.js

ENTRYPOINT ["node", "/index.js"]
