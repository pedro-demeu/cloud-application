FROM node:20-alpine

WORKDIR /app

# Copia os manifests do Yarn
COPY app/package.json app/yarn.lock ./

# Instala dependências
RUN yarn install

# Copia o restante do código
COPY app/ ./

EXPOSE 3000

CMD ["yarn", "start"]
