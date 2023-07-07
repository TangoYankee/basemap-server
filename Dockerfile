FROM maptiler/tileserver-gl:v4.4.10

COPY ./config.json /data
# COPY ./maptiler-osm-2020-02-10-v3.11-us_rhode-island.mbtiles /data

ARG DOWNLOAD_TOKEN
RUN wget https://data.maptiler.com/download/$DOWNLOAD_TOKEN/maptiler-osm-2020-02-10-v3.11-us_rhode-island.mbtiles

EXPOSE 8080
