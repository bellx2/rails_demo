FROM ruby:3.3.0

COPY . /app
WORKDIR /app

# RUN bundle install
# EXPOSE 3000
# CMD ["bundle", "exec","rails", "s", "-b", "0.0.0.0", "-p", "3000"]