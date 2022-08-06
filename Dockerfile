FROM node:15
WORKDIR /app
RUN npm install --global nodemon
COPY package.json .
RUN npm install
COPY . ./
ENV PORT 3000
EXPOSE $PORT
CMD ["npm", "run", "dev"]
