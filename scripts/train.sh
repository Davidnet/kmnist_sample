#!/bin/bash
docker run --mount type=bind,source="$(pwd)"/data,target=/usr/src/app/data,readonly kmnist_train