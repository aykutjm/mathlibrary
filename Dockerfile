FROM node:18

# 1. Çalışma dizinini belirle
WORKDIR /app

# 2. package.json ve lock dosyasını kopyala
COPY package*.json ./

# 3. Bağımlılıkları yükle
RUN npm install

# 4. Tüm kaynak kodunu kopyala
COPY . .

# 5. Uygulama portunu tanımla (örnek: 3000)
EXPOSE 3000

# 6. Uygulamayı başlat
CMD ["node", "index.js"]
