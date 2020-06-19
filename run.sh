#!/bin/bash

#docker run -i -t --rm  phtcosta/humanoid:1.0 sh

docker run -i -t --rm --memory="4g" --cpus="2.5" -p 50405:50405 phtcosta/humanoid:1.0
