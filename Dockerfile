# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY ibuy/package*.json ./

# Install the dependencies
RUN npm ci

# Copy the entire project to the working directory
COPY ibuy .

# Build the SvelteKit app
RUN npm run build

# Expose the port on which your app will run (adjust if necessary)
EXPOSE 4173

# Start the app when the container is run
CMD ["npm", "run", "preview"]