# Tutorial for MPI

Welcome to this tutorial (in development)


A local env with minimal dependencies can be built with
```bash
docker build -t local_docker_file -f Dockerfile
docker run -ti -v $(pwd):/root/shared -w /root/shared --name=tutorialmpi local_docker_file
```