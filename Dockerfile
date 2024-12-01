
FROM node:18-alpine


WORKDIR /app


COPY package*.json ./


RUN npm install --omit=dev


COPY . .


RUN npm run build


EXPOSE 3001


CMD ["npm", "run", "start"]