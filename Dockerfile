FROM ruby:3.2.2-alpine3.16

RUN apk update && \
    apk add --no-cache build-base postgresql-dev tzdata nodejs yarn

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY package.json yarn.lock ./

RUN yarn install --check-files

COPY . ./

ENTRYPOINT ["./entrypoints/entrypoint.sh"]