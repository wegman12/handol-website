
# Step 1: Build Stage
FROM node:20 as build-stage



# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./
COPY quasar.config.ts ./
COPY index.html ./

# Install dependencies
RUN npm ci

# Copy the rest of the application source code
COPY . .

# Build the Quasar application for production
RUN npm run build

# Step 2: Production Stage
FROM nginx:stable-alpine as production-stage

# Add standard labels for the Docker container
LABEL maintainer="Kevin Wegman <kevinwegman1993@gmail.com>"
LABEL version="1.0"
LABEL description="Quasar application built with Node.js and served using Nginx"
LABEL org.opencontainers.image.source="https://github.com/wegman12/handol-website"


# Copy built application from the build stage to the nginx html folder
COPY --from=build-stage /app/dist/spa /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]