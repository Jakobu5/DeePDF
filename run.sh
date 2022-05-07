#!/bin/bash

sudo docker run -v data:/data -v /tmp/logs:/usr/src/app/logs --rm deepdf $@