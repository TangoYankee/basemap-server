FROM maptiler/tileserver-gl-light:v4.4.10

COPY ./config.json /data

ARG DOWNLOAD_TOKEN
## Data for evaluation purposes only
ADD --chown=node https://data.maptiler.com/download/$DOWNLOAD_TOKEN/maptiler-osm-2020-02-10-v3.11-new-york_new-york.mbtiles /data

EXPOSE 8080
