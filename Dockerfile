# FROM {name of the image}:{version}
FROM node:latest

# Moving our code inside the image
# COPY {source} {destination} => copies everything in this destination to this destination
COPY . .

# RUN {command} => will install dependencies
RUN yarn

# CMD {executable} => will start our app
CMD [ "node", "src/index.js" ]


# NOTE: TIPS 

# Command line to build image
                   # {org name}/{image name}:{version} {location}
# $ docker build -t sambencivengo/docker-node-example:1 .

# Command line to run image
          # {port}:{port inside the container} {org name}/{image name}:{version} 
# $ docker run -p 8001:4000 sambencivengo/docker-node-example:1

# Command line to show running containers
# $ docker container ls 

# Docker file creates an image, when we run our image, it creates a container

# Command line to stop
# $ docker container stop {container id}
