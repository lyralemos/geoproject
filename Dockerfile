FROM andrejreznik/python-gdal:py3.8.2-gdal3.0.4

ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt /code/

RUN apt-get update && apt-get install -y --no-install-recommends git libgraphviz-dev wait-for-it gettext && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir -U pip && \
    pip install --no-cache-dir -r requirements.txt