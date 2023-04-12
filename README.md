# Tutorial for MPI

Welcome to this tutorial (in development)

# Contributing guidelines

1. If you have maintainer privileges, you can skip this step, otherwise make a [fork](https://github.com/scientificcomputing/mpi-tutorial/fork) of this repository.
2. Clone the repository (or fork) and create a new branch with `git checkout -b github-username/feature-description`
3. Create a compatible working environment, for instance by building the project docker-image.
```bash
docker build -t local_docker_file -f docker/Dockerfile .
docker run -ti -v $(pwd):/root/shared -w /root/shared --name=tutorialmpi local_docker_file
```
You can also use conda to build your environment
```bash
conda env update --file environment.yml --name name-of-your-env
```
4. Create an `.ipynb` in the [notebooks](./notebooks/) folder, or modify the existing notebooks. If a new notebook has been created, add it to the appropriate section of [_toc.yml](_toc.yml). You can use the [template-notebook](./notebooks/template.ipynb) as a starting point.
5. Make sure the webpage builds correctly by calling `jupyter book build -W .` from the root of the repository. You can inspect the webpage locally by opening [_build/html/index.html](_build/html/index.html) with the web-browser of your choice.
6. Make a [pull-request](https://github.com/scientificcomputing/mpi-tutorial/compare) to the main branch of this repo.
7. Make sure that the workflow [Build documentation](https://github.com/scientificcomputing/mpi-tutorial/actions/workflows/build_docs.yml) passes.
