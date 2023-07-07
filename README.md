# basemap-server
Tileserver-gl basemap server for personal applications

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

## Error Recieved
```sh
Starting tileserver-gl v4.4.10
Using specified config file from config.json
Starting server
Listening at http://[::]:8080/
Error: MBTiles not yet loaded
    at MBTiles.getInfo (/usr/src/app/node_modules/@mapbox/mbtiles/lib/mbtiles.js:252:37)
    at file:///usr/src/app/src/serve_rendered.js:1425:33
    at Database.<anonymous> (/usr/src/app/node_modules/@mapbox/mbtiles/lib/mbtiles.js:81:25)
SQLITE_CANTOPEN: unable to open database file
```