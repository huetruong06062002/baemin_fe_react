FROM node:20

WORKDIR /beamin_fe_nextjs

COPY package.json .


RUN yarn config set network-timeout 300000

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]

# docker build . -t beamin_fe_nextjs

# docker run -d -p 3001:3000 --name cons-next-tiki img-next-tiki