----
docker buildx create --use
docker buildx build --platform linux/arm64/v8,linux/amd64 --push -t akaliutau/randomizer-exporter .
----
