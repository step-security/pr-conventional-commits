FROM node:24-alpine@sha256:fb71d01345f11b708a3553c66e7c74074f2d506400ea81973343d915cb64eef0

RUN apk add --no-cache 'libcrypto3=3.5.7-r0' 'libssl3=3.5.7-r0'

COPY dist/index.js /index.js

ENTRYPOINT ["node", "/index.js"]
