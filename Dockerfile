FROM ruby:3.0.0-alpine
# Install system dependencies
RUN apk add --update --virtual \
    runtime-deps \
    postgresql-client \
    build-base \
    libxml2-dev \
    libxslt-dev \
    libffi-dev \
    readline \
    postgresql-dev \
    libc-dev \
    linux-headers \
    readline-dev \
    file \
    imagemagick \
    git \
    tzdata \
    curl \
    && rm -rf /var/cache/apk/*

# Install modern Node.js (v18) and Yarn
RUN apk add --update --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/v3.17/main \
    nodejs=18.15.0-r1 \
    npm=18.15.0-r1 \
    && npm install -g yarn

WORKDIR /app
COPY . /app/

ENV BUNDLE_PATH /gems
RUN yarn install
RUN bundle install

ENTRYPOINT ["bin/rails"]
CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000
# FROM ruby:3.0.0-alpine
# RUN apk add --update --virtual \
#     runtime-deps \
#     postgresql-client \
#     build-base \
#     libxml2-dev \
#     libxslt-dev \
#     nodejs \
#     yarn \
#     libffi-dev \
#     readline \
#     build-base \
#     postgresql-dev \
#     libc-dev \
#     linux-headers \
#     readline-dev \
#     file \
#     imagemagick \
#     git \
#     tzdata \
#     && rm -rf /var/cache/apk/*

# WORKDIR /app
# COPY . /app/

# ENV BUNDLE_PATH /gems
# RUN yarn install
# RUN bundle install

# ENTRYPOINT ["bin/rails"]
# CMD ["s", "-b", "0.0.0.0"]

# EXPOSE 3000