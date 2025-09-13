FROM node:18-alpine

WORKDIR /usr/src/app

# Copy only package.json and package-lock.json first (better caching for dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
