#!/bin/sh
rm -rf build
npm run build --nomaps
docker build -f Dockerfile.nginx . -t web-react:1.0 
docker tag web-react:1.0 adityadev01/web-react:1.0
docker push adityadev01/web-react:1.0
