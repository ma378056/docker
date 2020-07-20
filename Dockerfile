FROM openjdk
WORKDIR /
RUN ["echo","image created...! "]
EXPOSE 8080
CMD ["echo","Docker created...! "]
