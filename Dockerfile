# Node 18 resmi imajı
FROM node:18

# Çalışma dizini
WORKDIR /app

# package.json ve package-lock.json (varsa) kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Uygulama dosyalarını kopyala
COPY . .

# 3000 portunu aç
EXPOSE 3000

# Uygulamayı başlat
CMD ["npm", "start"]
