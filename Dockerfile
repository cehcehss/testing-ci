FROM node:14

# Create app directory
WORKDIR /ci-workflow

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./


# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . /ci-workflow
RUN npm install

EXPOSE 3000
CMD npm start