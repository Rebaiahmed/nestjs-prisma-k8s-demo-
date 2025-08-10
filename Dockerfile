# Dockerfile
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

# Example snippet
COPY prisma ./prisma
COPY node_modules/.prisma ./node_modules/.prisma


COPY . .
RUN npm run build

EXPOSE 3000
CMD ["node", "dist/main.js"]
