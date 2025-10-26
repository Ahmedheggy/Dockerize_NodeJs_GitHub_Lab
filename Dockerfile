FROM node:18

WORKDIR /app

# Copy package.json used in nmp installation
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
