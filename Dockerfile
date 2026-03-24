# 1. Base image (Node.js ka environment)
FROM node:20-slim

# 2. Folder banao container ke andar
WORKDIR /app

# 3. Pehle package files copy karo aur install karo (taki cached rahe)
COPY package*.json ./
RUN npm install

# 4. Baqi sara code copy karo
COPY . .

# 5. Command jo run hogi jab container start hoga
CMD ["npm", "test"]
