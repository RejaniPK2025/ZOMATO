
# Build Stage
FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./

# Install all dependencies
RUN npm ci

COPY . .

# Build React application
RUN npm run build

# Production Stage
FROM nginx:alpine

# Copy React build files into Nginx
COPY --from=builder /app/build /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

