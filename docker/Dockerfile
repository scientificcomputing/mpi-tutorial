FROM condaforge/mambaforge 

ENV DEBIAN_FRONTEND=noninteractive
ENV PYVISTA_JUPYTER_BACKEND=html
ENV PYVISTA_OFF_SCREEN=False

# Install ssh (missing dependency to run conda envs)
RUN apt-get update && \
    apt-get install -y ssh build-essential libgl1-mesa-glx xvfb

# Upgrade mamba
RUN mamba upgrade -y mamba

# Copy environment and requirements files into docker env
COPY environment.yml .

# Update environment file with new environment name
RUN mamba env update --file environment.yml --name dockerenv
SHELL ["mamba", "run", "-n", "dockerenv", "/bin/bash", "-c"]

RUN echo "source activate dockerenv" > ~/.bashrc