# 1. Node tabanlı resmi image
FROM node:18

# 2. Uygulama dizinine geç
WORKDIR /app

# 3. package.json ve package-lock.json'u kopyala
COPY package*.json ./

# 4. Bağımlılıkları yükle
RUN npm install

# 5. Kodları içeri al
COPY . .

# 6. Uygulamanın çalışacağı port
EXPOSE 3000

# 7. Uygulamayı başlat
CMD ["npm", "start"]
