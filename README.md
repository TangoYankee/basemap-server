# basemap-server
Tileserver-gl basemap server for personal project

## Obtain download link to files
- Navigate to link to download tiles for a personal project: [Rhode Island](https://data.maptiler.com/downloads/tileset/osm/north-america/us/rhode-island/?usage=personal)
- Right click on "Free Download" button to get direct download link
- Place download link in Dockerfile, replacing token with $DOWNLOAD_TOKEN variable

## Build docker image
```sh
docker build . --tag tileserver-gl --build-arg DOWNLOAD_TOKEN=token-removed-from-download-url
``` 

## Run docker image
```sh
docker run -p 8080:8080 tileserver-gl
```
