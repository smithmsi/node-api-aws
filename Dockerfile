ARG REPO=121272337069.dkr.ecr.us-east-2.amazonaws.com
FROM ${REPO}/node:12

WORKDIR /usr/src/app

COPY package*.json ./
ENV NODE_ENV=production
RUN npm install
COPY . .

EXPOSE 8080
CMD ["node", "run.js"]
