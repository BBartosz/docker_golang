# docker_golang
simple example of docker for golang

Used as example in [this](http://www.bbartosz.com/blog/2017/06/05/yadt-yet-another-docker-tutorial/)
blog post

build image:

```
docker build -t docker_golang /docker_golang/
```

run image

```
docker run -it -p 3000:3000 docker_golang
```
