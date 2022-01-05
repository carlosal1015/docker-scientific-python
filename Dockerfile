# Copyleft (c) January, 2021, Oromion.

FROM frolvlad/alpine-glibc

LABEL maintainer="Oromion <caznaranl@uni.pe>" \
    name="Scientific Python" \
    description="Almost anything that you need for Scientific Python in a container." \
    url="https://hub.docker.com/r/carlosal1015/docker-scientific-python" \
    vcs-url="https://github.com/carlosal1015/docker-scientific-python" \
    vendor="Oromion Aznarán" \
    version="1.2"

ARG MAIN_PKGS="\
  tini \
  curl \
  bash \
  ca-certificates \
  python3 \
  py3-numpy \
  freetype \
  jpeg \
  libpng \
  libstdc++ \
  libgomp \
  graphviz \
  font-noto \
  openssl \
  py3-pandas \
  py3-matplotlib \
  py3-requests \
  "

ARG BUILD_PKGS="\
  build-base \
  linux-headers \
  python3-dev \
  py3-setuptools \
  git \
  cmake \
  jpeg-dev \
  libffi-dev \
  gfortran \
  openblas-dev \
  py3-numpy-dev \
  freetype-dev \
  libpng-dev \
  libexecinfo-dev \
  "

# ARG PIP_PKGS="\
#   ipywidgets \
#   notebook \
#   "

ENV CONF_DIR="~/.ipython/profile_default/startup"

RUN set -ex; \
    apk update; \
    apk upgrade; \
    echo http://dl-cdn.alpinelinux.org/alpine/edge/main | tee /etc/apk/repositories; \
    echo http://dl-cdn.alpinelinux.org/alpine/edge/testing | tee -a /etc/apk/repositories; \
    echo http://dl-cdn.alpinelinux.org/alpine/edge/community | tee -a /etc/apk/repositories; \
    apk add --no-cache ${MAIN_PKGS}; \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi; \
    ln -s locale.h /usr/include/xlocale.h; \
    python3 -m ensurepip; \
    rm -r /usr/lib/python*/ensurepip; \
    pip3 install --no-cache --upgrade pip setuptools wheel; \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi; \
    apk add --no-cache --virtual=.build-deps ${BUILD_PKGS};
    # pip install -U --no-cache-dir ${PIP_PKGS}; \
    # # apk del .build-deps; \
    # rm /usr/include/xlocale.h; \
    # rm -rf /root/.cache; \
    # rm -rf /root/.[acpw]*; \
    # rm -rf /var/cache/apk/*; \
    # find /usr/lib/python3.8 -name __pycache__ | xargs rm -r; \
    # jupyter nbextension enable --py widgetsnbextension; \
    # mkdir -p ${CONF_DIR}/; \
    # echo "import warnings" | tee ${CONF_DIR}/config.py; \
    # echo "warnings.filterwarnings('ignore')" | tee -a ${CONF_DIR}/config.py; \
    # echo "c.NotebookApp.token = u''" | tee -a ${CONF_DIR}/config.py

# WORKDIR /notebooks

# EXPOSE 8888

# ENTRYPOINT ["/sbin/tini", "--"]

# CMD ["jupyter", "notebook", "--port=8888", "--no-browser", \
#     "--allow-root", "--ip=0.0.0.0", "--NotebookApp.token="]