# docker-scientific-python

[![Docker Hub](http://dockeri.co/image/carlosal1015/docker-scientific-python)](https://hub.docker.com/r/carlosal1015/docker-scientific-python)

[![Size and Layers](https://images.microbadger.com/badges/image/carlosal1015/docker-scientific-python.svg)](https://microbadger.com/images/carlosal1015/docker-scientific-python)
[![](https://images.microbadger.com/badges/version/carlosal1015/docker-scientific-python.svg)](https://microbadger.com/images/carlosal1015/docker-scientific-python)
[![GitHub issues](https://img.shields.io/github/issues/carlosal1015/docker-scientific-python.svg)](https://github.com/carlosal1015/docker-scientific-python/issues)
[![GitHub license](https://img.shields.io/github/license/carlosal1015/docker-scientific-python.svg)](https://raw.githubusercontent.com/carlosal1015/docker-scientific-python/master/LICENSE)

## What is including

This is a docker image that contains the following modules:
- [`Python 3.8.2 (default, Feb 25 2020, 22:50:20)`](https://www.python.org/)
- [`NumPy 1.18.1`](https://numpy.org/)
- [`Pandas 1.0.1`](https://pandas.pydata.org/)
- [`Matplotlib 3.1.3`](https://matplotlib.org/)
- [`Jupyter Notebook 6.0.3`](https://jupyter.org/)
- [IPython `7.13.0`](https://ipython.org/)
- [`nbformat 5.0.4`](https://nbformat.readthedocs.io/en/latest/)
- [`jupyter-core 4.6.3`](https://jupyter-core.readthedocs.io/en/latest/)
- [`ipykernel 5.1.4`](https://github.com/ipython/ipykernel)
- [`ipywidgets 7.5.1`](https://ipywidgets.readthedocs.io/en/latest/)
- [`nbconvert 5.6.1`](https://nbconvert.readthedocs.io/en/latest/)
- [`traitlets 4.3.3`](https://traitlets.readthedocs.io/en/stable/)

## Running the container

```sh
git clone https://github.com/carlosal1015/docker-scientific-python.git
cd docker-scientific-python
docker-compuse up -d
```
or
```sh
docker run -it --name scientific-python \
           -v $(PWD):/notebooks \
           -p 8888:8888 -d \
           carlosal1015/docker-scientific-python
```

Open [localhost:8888](http://localhost:8888) and enjoy :smile: