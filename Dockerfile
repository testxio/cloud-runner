FROM webnicer/protractor-headless

RUN npm install -g coffee-script

RUN apt-get install -y git

ADD scripts/clone-and-run.sh /
RUN chmod +x /clone-and-run.sh

ENV REPO '_'
ENV WORKDIR /work

WORKDIR /work

ENTRYPOINT ["/clone-and-run.sh"]

# example: docker run -e REPO=https://github.com/testxio/testx-quickstart.git --volume $PWD/tmpwork:/work testx/executor
