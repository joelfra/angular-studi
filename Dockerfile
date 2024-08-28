FROM node:alpine
WORKDIR /app
COPY package*.json /app/
COPY ./ /app/
RUN npm install -g @angular/cli
RUN npm install
RUN npm run build

CMD ["ng", "serve", "--host", "0.0.0.0"]


