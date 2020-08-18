
# download latest image 
docker pull sinomem/cnvanalysis:latest

# Rstudio user will be rstudio but the files created will have 
# the correct ownership and group (seen from outside Rstudio)
docker run -d --cpus=16 --rm \
  -e PASSWORD=password \
  -e USERID=$(id -u ${USER}) \
  -e GROUPID=$(id -g ${USER}) \
  -p 8790:8787 \
  -v /shares:/shares \
  --name Rstudio_bioc \
  sinomem/cnvanalysis:latest
