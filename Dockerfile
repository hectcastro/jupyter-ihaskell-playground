FROM python:3

RUN pip install --no-cache-dir jupyter

RUN \
      addgroup --system jupyter \
      && adduser --disabled-password --system --group \
                 --home /var/lib/jupyter --shell /usr/sbin/nologin \
                 jupyter \
      && apt-get update && apt-get install -y --no-install-recommends \
                 g++ \
                 gcc \
                 libc6-dev \
                 libffi-dev \
                 libgmp-dev \
                 libmagic-dev \
                 libblas-dev \
                 liblapack-dev \
                 libzmq3-dev \
                 libcairo2-dev \
                 libpango1.0-dev \
                 libzmq3-dev \
                 make \
                 xz-utils \
                 zlib1g-dev \
      && curl -sSL https://get.haskellstack.org/ | sh \
      && wget -qO- https://github.com/gibiansky/IHaskell/archive/master.tar.gz \
      | tar -xzC /var/lib/jupyter --strip-components=1 \
      && chown -R jupyter:jupyter /var/lib/jupyter \
      && mkdir -p /notebooks \
      && chown -R jupyter:jupyter /notebooks

WORKDIR /var/lib/jupyter
USER jupyter

RUN \
      stack setup \
      && stack install \
            gtk2hs-buildtools \
            checkers \
      && stack install --fast \
      && stack exec ihaskell install

ENTRYPOINT ["stack", "exec", "--", "jupyter", "notebook"]
CMD ["--NotebookApp.port=8888", "--NotebookApp.ip=*", "--NotebookApp.notebook_dir=/notebooks"]
