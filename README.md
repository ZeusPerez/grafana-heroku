# grafana-heroku
Deploy Grafana on Heroku


All this information has been collected from Grafana and Heroku documentation.

For building a custom image locally, [use the following guide](https://grafana.com/docs/grafana/latest/installation/docker/#build-with-grafana-image-renderer-plugin-pre-installed).


If you want to deploy it to Heroku, you will need to build the image and tag it as `web`: `docker build -t web .`

Once build, you can [deploy the image](https://devcenter.heroku.com/articles/container-registry-and-runtime#getting-started) to an existing Heroku app.

First you should push the image running:
```
heroku container:push web
```

And then release it:
```
heroku container:release web
```

The main problem about running the container in Heroku is that by default Grafana runs on port 3000 but the Docker functionality in Heroku assign dinamically the port. So just assigning the Grafana port to the `$PORT` variable will make it work.
