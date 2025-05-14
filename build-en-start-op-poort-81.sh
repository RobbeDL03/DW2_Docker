#!/bin/bash
docker build -t demo-site-image .
docker run -dt --name demo-site-container -p 81:80 demo-site-image
