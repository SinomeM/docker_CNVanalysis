## DESCRIPTION ## 
Dockerfile to create an image on top of the Bioconductor Rstudio one 
with a set of R packages already installed. 

The image is available on Docker Hub, <https://hub.docker.com/r/sinomem/cnvanalysis>. 

To run the container type something like:   
docker run --rm -d \
  -p 127.0.0.1:8787:8787 \
  -e DISABLE_AUTH=true \
  sinomem/cnvanalysis

