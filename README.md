# grafana-heroku
Deploy Grafana on Heroku


All this information has been collected from Grafana and Heroku documentation.

For building the image locally, [use the following command](https://grafana.com/docs/grafana/latest/installation/docker/#build-with-grafana-image-renderer-plugin-pre-installed):

```
docker build \
--build-arg "GRAFANA_VERSION=latest" \
--build-arg "GF_INSTALL_IMAGE_RENDERER_PLUGIN=true" \
-t grafana-custom -f Dockerfile .
```

And if you want to run the image run:

```
docker run -d -p 3000:3000 --name=grafana grafana-custom
```

Once build, you can [deploy the image](https://devcenter.heroku.com/articles/container-registry-and-runtime#getting-started) to an existing Heroku app.

First you should push the image running:
```
heroku container:push <image-name>
```

And then release it:
```
heroku container:release <image-name>
```
