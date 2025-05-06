# Use a minimal base image
FROM alpine:latest

# Install necessary dependencies
RUN apk add --no-cache ca-certificates

# Set the working directory inside the container
WORKDIR /JSE


# Copy the Go binary into the container
COPY JSE .

# Copy the .env file into the container
COPY .env .

# Copy the React frontend's dist directory into the container
COPY public/dist ./public/dist

# Expose the port your application listens on
EXPOSE 5000

# Define the command to run your application
CMD ["./JSE"]
