# nchan with keydb

## nchan testing

* starting service

```code
docker-compose up -d
```

* do some test

> use `websocat`

```code
sub message:

websocat ws://localhost/redis_sub/demoapp

pub message:

curl --location --request POST 'localhost/redis_pub/demoapp' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name":"dalong"
}'
```
