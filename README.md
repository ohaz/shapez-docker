# Shapez Docker-Compose

One "Compose" starter for shapez.io ( https://github.com/tobspr/shapez.io ).

Just download this repo, run:

```
docker-compose build
docker-compose up
```

Open your browser and navigate to `localhost:3005`.


When you are done playing, press CTRL+C.

To update:

```
docker-compose up --force-recreate
```

If that doesn't work:

```
docker-compose rm -f
docker-compose build
```

