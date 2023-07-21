FROM node:18.16.1-alpine3.18

LABEL maintainer="integrtr <info@integrtr.com>"

# Install serverless CLI
RUN yarn global add serverless && yarn cache clean

# Version / PATH Checks
RUN echo "nodejs: $(node --version)" && \
    echo "npm: $(npm --version)" && \
    echo "yarn: $(yarn --version)" && \
    echo "serverless: $(serverless --version)"

ENTRYPOINT [ "serverless" ]
