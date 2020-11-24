# grafana-heroku
Deploy Grafana on Heroku


All this information has been collected from Grafana and Heroku documentation.

For building the image locally, [use the following command](https://grafana.com/docs/grafana/latest/installation/docker/#build-with-grafana-image-renderer-plugin-pre-installed):

```
docker build \
--build-arg "GRAFANA_VERSION=latest" \
--build-arg "GF_INSTALL_IMAGE_RENDERER_PLUGIN=true" \
-t grafana-custom -f Dockerfile .
``

And if you want to run the image run:
```
docker run -d -p 3000:3000 --name=grafana grafana-custom
```

