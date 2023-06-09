# use jupyter notebook image
FROM jupyter/base-notebook:latest
USER root
# enable jupyterlab as default app
ENV JUPYTER_ENABLE_LAB=true

COPY requirements_conda.txt requirements_pip.txt /tmp/
COPY overrides.json /opt/conda/share/jupyter/lab/settings/

RUN mamba install --yes --file /tmp/requirements_conda.txt && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r /tmp/requirements_pip.txt && \
    jupyter labextension disable "@jupyterlab/apputils-extension:announcements" && \
    jupyter lab build && \
    # clean conda cache, index and package tarballs
    mamba clean -a && \
    # fix file permissions
    fix-permissions $CONDA_DIR && \
    fix-permissions $HOME
