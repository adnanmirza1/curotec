FROM ruby:3.0.0-alpine
RUN apk add --update --virtual \
    runtime-deps \
    postgresql-client \
    build-base \
    libxml2-dev \
    libxslt-dev \
    libffi-dev \
    readline \
    build-base \
    postgresql-dev \
    libc-dev \
    linux-headers \
    readline-dev \
    file \
    imagemagick \
    git \
    tzdata \
    && rm -rf /var/cache/apk/*

# Remove nodejs-current and npm from apk add
# Install dependencies for Node.js
RUN apk add --no-cache curl

# Install Node.js 20.x (LTS) manually
RUN curl -fsSL https://unofficial-builds.nodejs.org/download/release/v20.11.1/node-v20.11.1-linux-x64-musl.tar.xz -o node.tar.xz \
    && tar -xJf node.tar.xz -C /usr/local --strip-components=1 \
    && rm node.tar.xz \
    && ln -sf /usr/local/bin/node /usr/bin/node \
    && ln -sf /usr/local/bin/npm /usr/bin/npm

# Install yarn
RUN npm install -g yarn

WORKDIR /app
COPY . /app/

ENV BUNDLE_PATH /gems
RUN yarn install
RUN bundle install

ENTRYPOINT ["bin/rails"]
CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000