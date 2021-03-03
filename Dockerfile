FROM ruby:2.5
RUN apt-get update 
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /task_manage
COPY Gemfile Gemfile.lock /task_manage/
RUN bundle install