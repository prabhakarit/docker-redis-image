# Use an existing docker image as a base
FROM alpine

# Download and install a dependancy
RUN apk add --update redis
RUN apk add --update gcc

# Tell the image what to do when it is started as a container
CMD ["redis-server"]