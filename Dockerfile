FROM nginx:latest

ARG IMAGE_TAG

COPY index.html /usr/share/nginx/html/

EXPOSE 80

RUN /bin/bash -c 'echo "$IMAGE_TAG" > /image_tag.txt'
