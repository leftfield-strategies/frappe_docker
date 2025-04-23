# Use the official ERPNext image
FROM frappe/erpnext:latest

# Copy necessary files
COPY . /app

# Set working directory
WORKDIR /app

# Expose ports
EXPOSE 80

# Start command - adapting the docker-compose config to run in a single container
CMD ["bash", "-c", "bench start"]
