#!/usr/bin/env bash

docker run -it --rm \
       -v /var/run/docker.sock:/var/run/docker.sock \
       -v $(pwd):$(pwd) \
       -v ~/.circleci/:/root/.circleci \
       --workdir $(pwd) \
       circleci/picard \
       circleci config validate -c /git/lpws/.circleci/config.yml
