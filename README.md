# basemap-server
Tileserver-gl basemap server for personal project

## Build docker image
```sh
docker build . --tag tileserver-gl --build-arg DOWNLOAD_TOKEN=token-removed-from-download-url
``` 

## Run docker image
```sh
docker run -p 8080:8080 tileserver-gl
```
