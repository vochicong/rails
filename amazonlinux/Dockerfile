FROM amazonlinux:2

WORKDIR /app
USER root

COPY scripts/clean.sh scripts/
COPY scripts/yum.sh scripts/
RUN scripts/yum.sh && scripts/clean.sh

COPY scripts/chromedriver.sh scripts/
RUN scripts/chromedriver.sh && scripts/clean.sh

COPY scripts/wait-for-it.sh scripts/
RUN scripts/wait-for-it.sh

COPY scripts/rbenv.sh scripts/
RUN scripts/rbenv.sh

COPY scripts/ruby-rails.sh scripts/
RUN scripts/ruby-rails.sh

COPY scripts/zsh.sh scripts/
RUN scripts/zsh.sh && scripts/clean.sh

COPY Gemfile ./
COPY scripts/rails-sample.sh scripts/
#SHELL ["/bin/bash", "-c"]
RUN scripts/rails-sample.sh
