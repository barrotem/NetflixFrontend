# Define base image
FROM node:14.0.0-buster-slim
# Setup working directory inside the container
WORKDIR /netflinx_fe
# Copy source files to container
COPY . .
# Install dependencies, build the app
RUN npm install
RUN npm run build
# Export enivornment variable to communicate with netflix_movie_catalog
# Start the frontend app
CMD ["npm", "start"]