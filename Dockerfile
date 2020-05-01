FROM ubuntu:18.04

ARG version=2.165.2

RUN apt-get update; apt-get install curl docker.io sudo jq -y

RUN useradd -ms /bin/bash github
WORKDIR /home/github

RUN curl -O -L https://github.com/actions/runner/releases/download/v$version/actions-runner-linux-x64-$version.tar.gz; \
  tar xzf ./actions-runner-linux-x64-2.165.2.tar.gz; \
  ./bin/installdependencies.sh

RUN chown -R github:github /home/github

USER github

COPY register.sh register.sh
COPY remove.sh remove.sh

ENTRYPOINT ["./register.sh"]
