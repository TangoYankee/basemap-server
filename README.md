# basemap-server
Tileserver-gl basemap server for personal project

## Build docker image
```sh
docker build . --tag basemap-server --build-arg STORAGE_URL=[url-for-tile-storage]
``` 

## Run docker image
```sh
docker run -p 8080:8080 basemap-server
```
