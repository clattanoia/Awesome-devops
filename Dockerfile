  FROM alpine AS builder
  WORKDIR /home/app
  RUN apk add --no-cache --update nodejs nodejs-npm
  COPY package*.json ./
  RUN npm ci --production

  FROM alpine
  WORKDIR /home/app
  RUN apk add --no-cache --update nodejs nodejs-npm
  COPY --from=builder /home/app/node_modules ./node_modules
  COPY . .
  CMD ["npm", "start"]
