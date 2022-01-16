# Dockerfile for Clang-Tidy

## Building the Image

```sh
docker build \
-t micheleforese/cpplint:latest \
.
```

## Use The image

```sh
docker run \
--rm \
-it \
--user $(id -u):$(id -g) \
-v "$(pwd -W)":/src \
micheleforese/cpplint:latest \
cpplint
```
