Docker container for [andesite](https://github.com/nektro/andesite)

```
docker run \
    -i \
    -t \
    -d \
    --name andesite \
    -e admin=<DISCORD Client ID> \
    -v andesite:/go \
    --mount type=bind,source=<PATH TO DIR>,target=/mnt \
    -p 8000:8000 \
    andesite-docker:latest
```