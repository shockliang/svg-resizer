FROM node:lts-buster
RUN apt-get update && apt-get install -y librsvg2-bin

WORKDIR /convertor
COPY package.json ./
COPY svg-resizer.js ./

RUN npm install 

CMD ["node", "svg-resizer.js",  "-f", "-x", "64", "-y", "64"]