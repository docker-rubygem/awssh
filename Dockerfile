FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.2

RUN gem install awssh --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["awssh"]
CMD ["--help"]
