# use jupyter notebook image
FROM jupyter/base-notebook:latest

# enable jupyterlab as default app
ENV JUPYTER_ENABLE_LAB=true

COPY requirements.txt /tmp/
RUN conda install --yes --file /tmp/requirements_conda.txt && \
    pip install --no-cache-dir --file /tmp/requirements_pip.txt && \
    jupyter lab build && \
    # clean conda cache, index and package tarballs
    conda clean -a && \
    # fix file permissions
    fix-permissions $CONDA_DIR && \
    fix-permissions $HOME
