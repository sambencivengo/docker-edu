# FROM {name of the image}:{version}
FROM node:latest

# Moving our code inside the image
# COPY {source} {destination} => copies everything in this destination to this destination
COPY . .

# RUN {command} => will install dependencies
RUN yarn

# CMD {executable} => will start our app
CMD [ "node", "src/index.js" ]