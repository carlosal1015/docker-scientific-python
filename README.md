# docker-scientific-python

[![Docker Hub](http://dockeri.co/image/carlosal1015/docker-scientific-python)](https://registry.hub.docker.com/u/carlosal1015/docker-scientific-python/ "carlosal1015/docker-scientific-python")

[![Size and Layers](https://images.microbadger.com/badges/image/carlosal1015/docker-scientific-python.svg)](https://microbadger.com/images/carlosal1015/docker-scientific-python "Get your own image badge on microbadger.com")
[![GitHub issues](https://img.shields.io/github/issues/carlosal1015/docker-scientific-python.svg)](https://github.com/carlosal1015/docker-scientific-python/issues)
[![GitHub license](https://img.shields.io/github/license/carlosal1015/docker-scientific-python.svg)](https://raw.githubusercontent.com/carlosal1015/docker-scientific-python/master/LICENSE)

## What is include
This is an docker image that contains the following modules:
- [`Python 3.8.2`](https://www.python.org/)
- [`NumPy`](https://numpy.org/)
- [`Pandas`](https://pandas.pydata.org/)
- [`Matplotlib`](https://matplotlib.org/)
- [`Jupyter Notebook`](https://jupyter.org/)

## Running the container

```sh
git clone https://github.com/carlosal1015/docker-scientific-python.git
cd carlosal1015/docker-scientific-python
docker-compuse up -d
```
or

```sh
docker run -it --name machine-learning \
           -v $(PWD):/notebooks \
           -p 8888:8888 -d \
           carlosal1015/docker-scientific-python
```

Enjoy :)