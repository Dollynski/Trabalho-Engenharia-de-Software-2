# 1. Imagem Base do Node.js
FROM node:20.8.1

# 2. Diretório de trabalho
WORKDIR /usr/src/app

# 3. Copiar dependências
COPY package.json package-lock.json ./

# 4. Instalar dependências
RUN npm install

# 5. Copiar arquivos
COPY . .

# 6. Compilar o Código
# RUN npm run dev

# 7. Expor a porta 3000
EXPOSE 3000

# 8. Comando de inicialização
CMD ["npm", "run", "dev"]

