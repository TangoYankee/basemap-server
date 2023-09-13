FROM maptiler/tileserver-gl-light:v4.5.0

COPY ./config.json /data

ARG STORAGE_URL
## Data for evaluation purposes only
ADD --chown=node $STORAGE_URL/maptiler-osm-2020-02-10-v3.11-new-york_new-york.mbtiles /data/basemap.mbtiles


EXPOSE 8080
